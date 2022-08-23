class WorkSpacesController < ApplicationController
  def index
    @work_spaces = WorkSpace.all
  end

  def show
    @work_space = WorkSpace.find(params[:id])
  end

  def new
    @work_space = WorkSpace.new
  end

  def create
    @work_space = WorkSpace.new(work_space_params)
  
    if @work_space.save
      redirect_to work_space_path(@work_space), notice: "Work Space was successfully created."
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def edit
    set_workspace
  end

  def update
    set_workspace
    @work_space.update(work_space_params)

    if @work_space.save
      redirect_to work_space_path(@work_space), notice: "Work Space was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def work_space_params
    params.require(:work_space).permit(:user, :name, :price, :description)
  end

  def set_workspace
    @work_space = WorkSpace.find(params[:id])
  end
end
