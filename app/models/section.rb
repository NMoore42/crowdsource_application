class Section < ApplicationRecord
  belongs_to :story
  has_many :submissions
  has_many :authors, through: :submissions

  def order_submissions
    self.submissions.sort_by {|submission| submission.votes.count}
  end

  def get_published_submission
    Submission.all.find_by {|submission| submission.winner? && submission.section == self}
  end




end
