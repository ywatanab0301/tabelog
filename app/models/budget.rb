class Budget < ApplicationRecord
  has_many :shop_budgets
  has_many :shops, through: :shop_bugets
  has_many :review_budgets
  has_many :review, through: :review_bugets
end
