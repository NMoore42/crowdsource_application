class Story < ApplicationRecord
  has_many :sections
  has_many :follows
  has_many :followers, through: :follows
  belongs_to :author, class_name: :User, foreign_key: :user_id
  # self.table_name = :stories
  validates :title, presence: true
#  validates :title, length: { minimum: 2}
  #validates :title, length: { maximum: 50}
  validates :synopsis, presence: true
#  validates :synopsis, length: { minimum: 50 }
  #validates :synopsis, length: { maximum: 300 }


  def self.recent
    Story.all.last(5)
  end

  def self.top_stories
    Story.all.sort_by {|story| -story.follows.count}.first(5)
  end

  def following_story?(current_user)
    self.followers.include?(current_user)
  end

  def section_by_time_stamp(section_instance)
    sorted_sections = self.sections.sort_by {|section| section.created_at}
    section_number = sorted_sections.index(section_instance) + 1
  end



end
