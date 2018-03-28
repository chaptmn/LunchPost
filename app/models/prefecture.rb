class Prefecture < ApplicationRecord
  has_many :stations
  has_many :lunch_posts
  has_many :users
end
