class Review < ApplicationRecord
  belongs_to :item
  # belongs_to :user

  # has_many :reviewed_users, through: :reviews, source: :user

  validates :content, presence: true

  def created_at
    attributes["created_at"].strftime("%m/%d/%Y")
  end
end
