class Review < ApplicationRecord
  belongs_to :user
  has_many :likes
  has_many :images
  belongs_to :shop
  has_many :review_tags
  has_many :tags, through: :review_tags
  has_many :review_budgets
  has_many :budgets, through: :review_budgets

  accepts_nested_attributes_for :images
end
