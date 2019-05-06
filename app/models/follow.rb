class Follow < ApplicationRecord
  belongs_to :story
  belongs_to :follower, class_name: :User, foreign_key: :user_id
end
