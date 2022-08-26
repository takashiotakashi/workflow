class UsersController < ApplicationController
  def index
    @users = User.includes(avatar_attachment: :blob).all
  end

  def show
    @user = current_user
    authorize @user
  end

end
