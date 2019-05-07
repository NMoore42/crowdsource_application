class SessionsController < ApplicationController

  def login
  end

  def create
    session[:user_id] = params[:user_id]
    redirect_to user_path(current_user)
  end


  def logout
    session.delete(:user_id)
    redirect_to controller: 'stories', action 'index'
  end


end
