class Review < ApplicationRecord
  belongs_to :user
  has_many :likes
  has_many :images
  belongs_to :shop
  # has_many :review-tags
  # has_many :tags, through:review-tag
end
