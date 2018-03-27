class LunchPost < ApplicationRecord
  mount_uploader :image_path, ImageUploader
  belongs_to :user
  belongs_to :prefecture
  belongs_to :station

  validates :title, presence: true, length: { maximum: 100 }
  validates :shop_name, length: { maximum: 100 }
  validates :price, length: { maximum: 5 }, presence: true
  validates :image_path, presence: true

  scope :is_active, -> { where(is_active: true) }
end
