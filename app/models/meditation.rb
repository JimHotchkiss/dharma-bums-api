class Meditation < ApplicationRecord
  has_many :comments, as: :commentable
end
