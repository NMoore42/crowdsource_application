

class VotesController < ApplicationController

  def new
    @vote = Vote.new
  end


  def create
    if logged_in?
      create_vote
    else
      redirect_to login_path
    end
  end


 ############ Helper Methods ##############

  #Helper for #create_vote
  def cannonize
    if winning_submission?
      cannonize_submission
    end
  end

  #Helper for #create
  def create_vote
    if !following?
      Follow.create(user_id: session[:user_id], story_id: get_story_id)
    end
    Vote.create(vote_params)
    cannonize
  end



  private

  def vote_params
    params.require(:vote).permit(:user_id, :submission_id)
  end

end
