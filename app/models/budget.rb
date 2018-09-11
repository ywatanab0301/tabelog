class Budget < ApplicationRecord
  has_many :shop_budgets
  has_many :shops, through: :shop_bugets
end
