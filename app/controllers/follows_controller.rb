class FollowsController < ApplicationController

  def new
    @follow = Follow.new
  end

  def create
    @follow = Follow.new(follow_params)
    if @follow.save
      #do something
    else
      redirect_to login_path
    end
  end

  private

  def follow_params
    params.require(:follow).permit(:user_id, :story_id)
  end

end
