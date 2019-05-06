class Submission < ApplicationRecord
  belongs_to :author, class_name: :User, foreign_key: :user_id
  has_many :votes
  has_many :voters, through: :votes
end
