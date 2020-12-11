class User < ApplicationRecord
#     has_secure_password

#     has_many :items, dependent: :destroy
#     has_many :reviews, dependent: :destroy
#     has_many :reviewed_items, through: :reviews, source: :item

#     validates :email, uniqueness: { case_sensitive: false }
end
