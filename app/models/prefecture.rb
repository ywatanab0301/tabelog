class Prefecture < ApplicationRecord
  has_many :shop_prehectures
  has_many :shops, through: :shop_prehectures
end
