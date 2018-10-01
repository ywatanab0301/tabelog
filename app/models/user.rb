class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  mount_uploader :avatar, ImageUploader
  mount_uploader :background_image, ImageUploader

# association
  has_many :reviews, dependent: :destroy
  has_many :like_reviews, through: :likes, source: :review,dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :reservations, dependent: :destroy
  has_many :relationships, dependent: :destroy
  # こちらが能動的関係、フォローしているユーザーを取り出す
  has_many :following_relationships, foreign_key: "follower_id", class_name: "Relationship", dependent: :destroy
  has_many :followings, through: :following_relationships
  # こちらが受動的関係、、フォローしているユーザーを取り出す
  has_many :follower_relationships, foreign_key: "following_id", class_name: "Relationship", dependent: :destroy
  has_many :followers, through: :follower_relationships
  has_many :wants, dependent: :destroy
  has_many :shops, through: :wants


    def following?(other_user)
      following_relationships.find_by(following_id: other_user.id)
    end

    def follow!(other_user)
      following_relationships.create!(following_id: other_user.id)
    end

    def unfollow!(other_user)
      following_relationships.find_by(following_id: other_user.id).destroy!
    end

end
