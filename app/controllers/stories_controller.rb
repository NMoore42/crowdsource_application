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

  def full
    @story = Story.find(params[:id])
  end

  def all
    @stories = Story.all
  end

  def create
    @story = Story.new(story_params)
    if @story.valid?
      @story.save
      @section = Section.create(story_id: @story.id, published?: false)
      redirect_to @story
    else
      render :new
    end
  end

  # def new_section
  #   until @story.published? == true
  #     if @story.sections.last.published? == true
  #       @section = Section.create(story_id: @story.id, published?: false)
  #     end
  #   end
  # end





  private

  def story_params
    params[:story][:user_id] = current_user.id
    params.require(:story).permit(:title, :synopsis, :additional_detail, :published?, :user_id)
  end

  def require_login
    redirect_to login_path unless logged_in?
  end

  # def new_section
  #   until @story.published? == true
  #     if @story.sections.last.published? == true
  #       @section = Section.create(story_id: @story.id, published?: false)
  #     end
  #   end
  # end
end
