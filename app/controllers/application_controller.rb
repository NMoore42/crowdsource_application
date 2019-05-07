class ApplicationController < ActionController::Base

  helper_method :current_user_id

  def current_user_id
    session[:user_id]
  end

  def require_login
    # If session does not include any value for :current_user key
    # Redirect this user back to the stories index or root page.
    if !current_user_id
      redirect_to controller: 'stories', action 'index'
    end
  end

end
