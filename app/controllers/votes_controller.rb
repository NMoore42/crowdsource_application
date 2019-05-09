require 'pry'

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

  #Helper for #create
  def create_vote
    @vote = Vote.create(vote_params)
    if !following_story
      Follow.create(user_id: session[:user_id], story_id: get_story_id)
    end
    cannonize
    redirect_to request.referrer
  end


  #Helper for #create_vote
  def following_story
    Submission.find(params[:vote][:submission_id]).section.story.followers.include?(current_user)
  end

  def get_story_id
    Submission.find(params[:vote][:submission_id]).section.story.id
  end

  #Helper for #create_vote
  def cannonize
    if @vote.winning_submission?
      @vote.cannonize_submission
    end
  end

  private

  def vote_params
    params.require(:vote).permit(:user_id, :submission_id)
  end

end
