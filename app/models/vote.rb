class Vote < ApplicationRecord
  belongs_to :voter, class_name: :User, foreign_key: :user_id
  belongs_to :submission
  has_one :section, through: :submission
  has_one :story, through: :section


  def winning_submission?
    story_follows = self.story.follows.count
    submission_likes = self.submission.votes.count
    submission_likes.to_f / story_follows.to_f > 0.5 #&& story_follows > 10
  end

  def cannonize_submission
    self.submission.winner? = true
    self.section.published? = true
  end

end
