class Story < ApplicationRecord
  has_many :sections
  has_many :follows
  has_many :followers, through: :follows
  has_many :submissions, through: :sections
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

  def get_published_submission(section_instance)
    pub_section = self.sections.find {|section| section == section_instance}
    pub_section.submissions.find {|submission| submission.winner?}
  end

  def self.recently_updated
    Story.all.sort_by do |story|
      story.updated_at
    end
  end

  def get_full_published_story
    self.submissions.select { |submission| submission.winner? }
  end




end
