class Shop < ApplicationRecord
  has_many :reservations
  has_many :reviews
  has_many :shop_prefectures
  has_many :prefectures, through: :shop_prefectures
  has_many :shop_budgets, dependent: :destroy
  has_many :budgets, through: :shop_budgets
  has_many :shop_genres, dependent: :destroy
  has_many :genres, through: :shop_genres

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

  def self.search(search)
    if search # Controllerから渡されたパラメータが!= nilの場合は、titleカラムを部分一致検索
      Shop.where(['shop_name LIKE ? OR station LIKE ? OR prtext LIKE ?', "%#{search}%", "%#{search}%", "%#{search}%"])
    else
      Shop.all #全て表示。
    end
  end

end
