class ShopBudget < ApplicationRecord
  belongs_to :shop, optional: true
  belongs_to :budget, optional: true
end
