class Vote < ApplicationRecord
  belongs_to :voter, class_name: :User, foreign_key: :user_id
  belongs_to :submission
  has_one :section, through: :submission
  has_one :story, through: :section


  def winning_submission?
    story_follows = self.story.follows.count
    submission_votes = self.submission.votes.count
    submission_votes.to_f / story_follows.to_f > 0.5 #&& story_follows > 10
  end

  def cannonize_submission
    self.submission.update(winner?: true)
    self.section.update(published?: true)
    if self.submission.end_story
      self.story.update(published?: true)
    else
      Section.create(story_id: self.story.id, published?: false)
    end
  end


end
