class Shop < ApplicationRecord
  has_many :reservations
  has_many :reviews
  has_many :shop_prefectures
  has_many :prefectures, through: :shop_prefectures
  has_many :shop_budgets
  has_many :budgets, through: :shop_budgets
  has_many :shop_genres
  has_many :genres, through: :shop_genres
end
