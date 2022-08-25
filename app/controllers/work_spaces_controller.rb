class WorkSpacesController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show]

  # def index
  #   @products = Product.where.not(user: current_user)
  # end
  # def my_stickers
  #   @products = Product.where(user: current_user)
  # end


  def index
    @work_spaces = policy_scope(WorkSpace)
  end

  def my_work_spaces
    @work_spaces = policy_scope(WorkSpace)
  end

  def show
    @work_space = WorkSpace.find(params[:id])
    authorize @work_space
  end

  def new
    @work_space = WorkSpace.new
    authorize @work_space
  end

  def create
    @work_space = WorkSpace.new(work_space_params)
    @work_space.user = current_user
    authorize @work_space
    if @work_space.save
      redirect_to work_space_path(@work_space), notice: "Work Space was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    set_workspace
    authorize @work_space
  end

  def update
    authorize @work_space
    set_workspace
    @work_space.update(work_space_params)

    if @work_space.save
      redirect_to work_space_path(@work_space), notice: "Work Space was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    set_workspace
    authorize @work_space
    @work_space.destroy
    redirect_to work_spaces_path, status: :see_other
  end

  private

  def work_space_params
    params.require(:work_space).permit(:user, :name, :price, :description, :photo)
  end

  def set_workspace
    @work_space = WorkSpace.find(params[:id])
  end
end
