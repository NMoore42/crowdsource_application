class StoriesController < ApplicationController
  # before_action :require_login, only: [:new, :create]



  def index
    @stories = Story.all
  end

  def show
    @story = Story.find(params[:id])
  end

  def new
    @story = Story.new
  end

  def create
    @story = Story.new(story_params)
    if @story.save
      redirect_to @story
    else
      render :new
    end
  end


  private

  def story_params
    params.require(:story).permit(:title, :synopsis, :additional_detail, :published?, :user_id)
  end

  def require_login
    return head(:forbidden) unless session.include? :user_id
  end
end
