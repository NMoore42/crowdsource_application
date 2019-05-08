class SectionsController < ApplicationController

def show
  @section = Section.find(params[:id])
end

def new
  @section = Section.new
end

def create
  @section = Section.new(section_params)
  if @section.save
    # until @story.published? == true
    #   if @story.sections.last.published? == true
    #     @section = Section.create(story_id: @story.id, published?: false)
    #   end
    # end
  end
end


private

def section_params
  params.require(:section).permit(:story_id, :published?)
end
end
