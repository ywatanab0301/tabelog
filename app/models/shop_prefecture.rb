class ShopPrefecture < ApplicationRecord
  belongs_to :shop, optional: true
  belongs_to :prefecture, optional: true
end
