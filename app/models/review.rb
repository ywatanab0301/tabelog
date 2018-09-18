class Review < ApplicationRecord
  belongs_to :user
  has_many :likes
  has_many :images
  belongs_to :shop, optional: true
  has_many :review_tags, dependent: :destroy
  has_many :tags, through: :review_tags
  has_many :review_budgets, dependent: :destroy
  has_many :budgets, through: :review_budgets

  has_many :likes, dependent: :destroy
  def like_user(user_id)
   likes.find_by(user_id: user_id)
  end


  mount_uploader :pic1, ImageUploader
  mount_uploader :pic2, ImageUploader
  mount_uploader :pic3, ImageUploader
  mount_uploader :pic4, ImageUploader
  mount_uploader :pic5, ImageUploader

end
