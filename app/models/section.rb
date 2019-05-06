class Section < ApplicationRecord
  belongs_to :story
  has_many :submissions
  has_many :authors, through: :submissions
end
