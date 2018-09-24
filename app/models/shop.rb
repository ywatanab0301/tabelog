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

  def self.search(prefecture_id, genre_id)
    if prefecture_id && genre_id
      @shop_p = Prefecture.find(prefecture_id).shops.pluck(:id)
      @shop_g = Genre.find(genre_id).shops.pluck(:id)
      @shop_f = []
      @shop_p.each do |id|
        @shop_f << @shop_g.grep(id)[0] if @shop_g.grep(id) != []
      end
      @shops = @shop_f.map { |id| Shop.find(id) }
    else
      Shop.all
    end
  end

end
