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
    Story.joins(:follows).group("story.id").order("count(followers.id) DESC")
  end




end
