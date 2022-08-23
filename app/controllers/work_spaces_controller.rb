class WorkSpacesController < ApplicationController

  def new
    @work_space = WorkSpace.new
  end

  def create
    @work_space = WorkSpace.new(work_space_params)
    # @work_space.save
    if @work_space.save
      redirect_to work_space_path(@work_space)
    else
      render 'new', status: :unprocessable_entity
    end
  end

  private

  def work_space_params
    params.require(:work_space).permit(:name, :description, :price)
  end
end
