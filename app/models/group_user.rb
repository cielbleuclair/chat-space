class GroupUser < ApplicationRecord
  # アソシエーションの定義
  belongs_to :group
  belongs_to :user
end
