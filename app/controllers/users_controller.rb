class UsersController < ApplicationController
  before_action :find_user, only: [:show, :destroy]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to stories_path
    else
      @errors = @user.errors.full_messages
      render :new
    end
  end

  def destroy
    session.delete(:user_id)
    @user.delete
    redirect_to login_path
  end



  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end

  def find_user
    @user = User.find(params[:id])
  end


end
