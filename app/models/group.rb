class Group < ApplicationRecord
  # アソシエーションの定義
  has_many :group_users
  has_many :users, through: :group_users
  validates :name, presence: true, uniqueness: true
  has_many :messages
end
