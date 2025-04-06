class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @title = "User Index"
    @users = User.all.order(:username)
  end

  def show
  end

  def new
    @title = "New user"
    @user = User.new
    render
  end


  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to @user, notice: "User was successfully updated."
    else
      render :edit
    end
  end

  private

  def set_user
   @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :firstname, :lastname, :email, :password, :password_confirmation)
  end
end
