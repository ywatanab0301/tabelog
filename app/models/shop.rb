class Shop < ApplicationRecord
  has_many :reservations
  has_many :reviews, dependent: :destroy
  has_many :shop_prefectures, dependent: :destroy
  has_many :prefectures, through: :shop_prefectures
  has_many :shop_budgets, dependent: :destroy
  has_many :budgets, through: :shop_budgets
  has_many :shop_genres, dependent: :destroy
  has_many :genres, through: :shop_genres
  has_many :wants, dependent: :destroy
  has_many :users, through: :wants

  mount_uploader :pic1, ImageUploader
  mount_uploader :pic2, ImageUploader
  mount_uploader :pic3, ImageUploader
  mount_uploader :pic4, ImageUploader
  mount_uploader :pic5, ImageUploader
  mount_uploader :menu_image_1, ImageUploader
  mount_uploader :menu_image_2, ImageUploader
  mount_uploader :menu_image_3, ImageUploader
  mount_uploader :menu_image_4, ImageUploader
  mount_uploader :menu_image_5, ImageUploader

  def star_review_average
    reviews.average(:rate).round if reviews.present?
  end

  def review_average
    reviews.average(:rate).round(2) if reviews.present?
  end

  def dinner_average
    reviews.where(lunch_dinner: 1).average(:rate).round(2) if reviews.where(lunch_dinner: 1).present?
  end

  def lunch_average
    reviews.where(lunch_dinner: 2).average(:rate).round(2) if reviews.where(lunch_dinner: 2).present?
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

  def self.shopsearch(prefecture_id, genre_id)
    if prefecture_id && genre_id
      @shop_prefecture = Prefecture.find(prefecture_id).shops.pluck(:id)
      @shop_genre = Genre.find(genre_id).shops.pluck(:id)
      @shop_find = []
      @shop_prefecture.each do |id|
        @shop_find << @shop_genre.grep(id)[0] if @shop_genre.grep(id) != []
      end
      @shops = @shop_find.map { |id| Shop.find(id) }
    elsif prefecture_id
      @shops = Prefecture.find(prefecture_id).shops
    elsif genre_id
      @shops = Genre.find(genre_id).shops
    else
      Shop.includes(:genres, :reviews, :prefectures)
    end
  end

  def self.search(search)
    if search # Controllerから渡されたパラメータが!= nilの場合は、titleカラムを部分一致検索
      Shop.where(['shop_name LIKE ? OR station LIKE ? OR prtext LIKE ?', "%#{search}%", "%#{search}%", "%#{search}%"])
    else
      Shop.all #全て表示。
    end
  end

end
