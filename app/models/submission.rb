class Submission < ApplicationRecord
  belongs_to :author, class_name: :User, foreign_key: :user_id
  has_many :votes
  has_many :voters, through: :votes

  validates :subtitle, presence: true, :subtitle, length: { maximum: 50 }
  validates :summary, presence: true, uniqueness: true, :summary, length: { maximum: 500 }
  validates :content, presence: true, uniqueness: true, :content, length: { minimum: 250 }


end
