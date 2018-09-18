class Shop < ApplicationRecord
  has_many :reservations
  has_many :reviews
  has_many :shop_prefectures
  has_many :prefectures, through: :shop_prefectures
  has_many :shop_budgets
  has_many :budgets, through: :shop_budgets
  has_many :shop_genres
  has_many :genres, through: :shop_genres

  mount_uploader :pic1, ImageUploader
  mount_uploader :pic2, ImageUploader
  mount_uploader :pic3, ImageUploader
  mount_uploader :pic4, ImageUploader
  mount_uploader :pic5, ImageUploader
end
