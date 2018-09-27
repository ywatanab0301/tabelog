class Budget < ApplicationRecord
  has_many :shop_budgets, dependent: :destroy
  has_many :shops, through: :shop_budgets
  has_many :review_budgets, dependent: :destroy
  has_many :reviews, through: :review_budgets
end
