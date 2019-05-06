class Story < ApplicationRecord
  has_many :sections
  has_many :follows
  has_many :followers, through: :follows
  belongs_to :author, class_name: :User, foreign_key: :user_id
end
