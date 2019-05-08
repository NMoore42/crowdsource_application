class VotesController < ApplicationController

  def new
    @vote = Vote.new
  end


  def create
    @vote = Vote.new(vote_params)
    if @vote.save
      if winning_submission?
        cannonize_submission
      end
      #redirect_to !!!! Need page route here !!!!
    else
      redirect_to login_path
    end
  end

  private

  def vote_params
    params.require(:vote).permit(:user_id, :submission_id)
  end


end
