class ApplicationController < ActionController::Base

  helper_method :current_user

  def current_user
    if session[:user_id]
      User.find(session[:user_id])
    end
  end

  def require_login
    # If session does not include any value for :current_user key
    # Redirect this user back to the stories index or root page.
    if !current_user
      redirect_to controller: 'stories', action 'index'
    end
  end


end
