

class VotesController < ApplicationController

  def new
    @vote = Vote.new
  end


  def create
    if following_story?
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
    Vote.create(vote_params)
    cannonize
    #redirect_to !!!! Need page route here !!!!
  end



  private

  def vote_params
    params.require(:vote).permit(:user_id, :submission_id)
  end

end
