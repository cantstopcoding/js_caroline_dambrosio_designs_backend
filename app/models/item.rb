class Item < ApplicationRecord
  belongs_to :category
  # belongs_to :user
  has_many :reviews, dependent: :destroy
  # has_many :reviewed_users, through: :reviews, source: :user

  validates :name, :image_url, :price, :description, :category_id, presence: true

  scope :order_recent_date, -> { order "created_at DESC" }
end
