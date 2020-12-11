class Review < ApplicationRecord
  belongs_to :item
  # belongs_to :user

  has_many :reviewed_users, through: :reviews, source: :user
end
