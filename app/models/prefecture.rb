class Prefecture < ApplicationRecord
  has_many :shop_prefectures
  has_many :shops, through: :shop_prefectures
end
