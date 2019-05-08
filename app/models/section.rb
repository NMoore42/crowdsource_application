class Section < ApplicationRecord
  belongs_to :story
  has_many :submissions
  has_many :authors, through: :submissions

  def order_submissions
    self.submissions.sort_by {|submission| submission.votes.count}
  end

  def voted?(current_user)
    self.voters.include?(current_user)
  end

end
