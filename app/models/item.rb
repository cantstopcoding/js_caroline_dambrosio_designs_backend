class Item < ApplicationRecord
  belongs_to :category
  # belongs_to :user
  has_many :reviews, dependent: :destroy
  # has_many :reviewed_users, through: :reviews, source: :user
end
