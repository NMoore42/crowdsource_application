class StoriesController < ApplicationController
  before_action :require_login, only: [:new, :create]



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
<<<<<<< HEAD
    if @story.save
=======
    if @story.valid?
      @story.save
      @section = Section.create(story_id: @story.id, published?: false)
>>>>>>> jake_day3
      redirect_to @story
    else
      render :new
    end
  end


  private

  def story_params
    params[:story][:user_id] = current_user.id
    params.require(:story).permit(:title, :synopsis, :additional_detail, :published?, :user_id)
  end

  def require_login
    redirect_to login_path unless session.include? :user_id
  end
end
