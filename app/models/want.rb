class Want < ApplicationRecord
  validates :user_id, :uniqueness => {:scope => :shop_id}

  belongs_to :user, counter_cache: :wants_count
  belongs_to :shop

  def star_review_average
    reviews.average(:rate).round if reviews.present?
  end

  def review_average
    reviews.average(:rate).round(2) if reviews.present?
  end
end
