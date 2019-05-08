class SessionsController < ApplicationController
  def login
  end

  def create
    username = params[:username]
    user = User.find_by(username: username)
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to user_path(user.id)
    else
      @errors = ["Invalid credentials, please try again"]
      render :new
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to login_path
  end

end
