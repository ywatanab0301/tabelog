class ShopGenre < ApplicationRecord
  belongs_to :shop, optional: true
  belongs_to :genre, optional: true
end
