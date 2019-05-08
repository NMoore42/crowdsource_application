class Submission < ApplicationRecord
  belongs_to :author, class_name: :User, foreign_key: :user_id
  has_many :votes
  has_many :voters, through: :votes

  validates :subtitle, presence: true#, length: { maximum: 50 }
  validates :summary, presence: true, uniqueness: true#, length: { maximum: 500 }
  validates :content, presence: true, uniqueness: true#, length: { minimum: 250 }

  def self.top_submissions
    Submission.joins(:votes).group("submissions.id").order("count(votes.id) DESC")
  end

end
