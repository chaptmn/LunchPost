class Station < ApplicationRecord
  belongs_to :prefecture
  has_many :users
  has_many :lunch_posts
end
