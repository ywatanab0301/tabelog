class Prefecture < ApplicationRecord
  has_many :shop_prefectures, dependent: :destroy
  has_many :shops, through: :shop_prefectures
end
