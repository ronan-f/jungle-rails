class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.email.downcase!

    if @user.save
      redirect_to root_path
      user = User.find_by(email: @user.email)
      session[:user_id] = user.id.to_s
    else
      render :new
    end
  end

private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
