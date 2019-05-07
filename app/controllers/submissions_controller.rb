class SubmissionsController < ApplicationController

def index
  @submissions = Submission.all
end

def show
  @submission = Submission.find(params[:id])
end

def new
  @submission = Submission.new
end


def create
  #authorize helper method
    @submission = Submission.new(submission_params)
    @submission.save
    if @submission.valid?
      redirect_to submission_path(@submission)
    else
      @error = @submission.errors.full_messages
      render :new
    end
  end
end



private

def submission_params
  params.require(:submission).permit(:subtitle, :summary, :content, :user_id, :section_id)
end
