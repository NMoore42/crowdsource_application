class User < ApplicationRecord
  has_many :follows
  has_many :stories
  has_many :submissions
  has_many :votes
  has_many :voted_submissions, through: :votes, source: :submission
  has_many :followed_stories, through: :follows, source: :story
  has_many :sections, through: :submissions


  validates :username, presence: true, uniqueness: true

  has_secure_password

end
