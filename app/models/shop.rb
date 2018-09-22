class Shop < ApplicationRecord
  has_many :reservations
  has_many :reviews
  has_many :shop_prefectures
  has_many :prefectures, through: :shop_prefectures
  has_many :shop_budgets
  has_many :budgets, through: :shop_budgets
  has_many :shop_genres
  has_many :genres, through: :shop_genres

  mount_uploader :pic1, ImageUploader
  mount_uploader :pic2, ImageUploader
  mount_uploader :pic3, ImageUploader
  mount_uploader :pic4, ImageUploader
  mount_uploader :pic5, ImageUploader

  def star_review_average
    reviews.average(:rate).round if reviews.present?
  end

  def review_average
    reviews.average(:rate).round(2) if reviews.present?
  end

  def show_last_review
    if reviews.last.present?
      reviews.last.text
    else
      'まだ口コミはありません'
    end
  end

  def show_last_review_title
    if reviews.last.present?
      reviews.last.title
    else
      'No Title'
    end
  end

  def show_last_review_name
    if reviews.last.present?
      reviews.last.user.nickname
    else
      'No Name'
    end
  end

end
