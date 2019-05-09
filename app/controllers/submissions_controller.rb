class SubmissionsController < ApplicationController

  def index
    @submissions = Submission.all
  end

  def show
    @submission = Submission.find(params[:id])
  end

  def new
    @submission = Submission.new
    @section = Section.find(params[:section_id])
  end


  def create
    #authorize helper method
    @section = Section.find(params[:section_id])
    @submission = Submission.new(submission_params)
    if @submission.save
      redirect_to story_section_submission_path(@submission.section.story, @submission.section, @submission)
    else
      @error = @submission.errors.full_messages
      render :new
    end
  end



  private

  def submission_params
    p params
    params[:submission][:winner?] = false
    params[:submission][:user_id] = current_user.id
    params[:submission][:section_id] = @section.id
    params.require(:submission).permit(:subtitle, :summary, :content, :user_id, :section_id, :winner?, :end_story)
  end

end
