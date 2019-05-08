class FollowsController < ApplicationController

  def new
    @follow = Follow.new
  end

  def create
    if logged_in?
      create_follow
    else
      redirect_to login_path
    end
  end

  #Helper method for #create
  def create_follow
    Follow.create(follow_params)
  end

  private

  def follow_params
    params.require(:follow).permit(:user_id, :story_id)
  end

end
