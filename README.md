## reviewsテーブル

|Column|Type|Options|
|------|----|-------|
|user|references|null: false, foreign_key: true|
|time|integer|null: false|
|price|integer|null: false|
|rate |integer|null: false|
|food_rate |integer|null: false|
|service_rate|integer|null: false|
|atmosphere_rate|integer|null: false|
|cp_rate|integer|null: false|
|drink_rate|integer|null: false|
|title|string|null: false|
|text|text|null: false|
|image|references||
|visit_day|datetime|null: false|
|share_with|integer|null: false|

### Association
- belongs_to :user
- has_many :likes
- has_many :images
- belongs_to :shop
- has_many :review-tags
- has_many :tags, through:review-tag

## reservations table

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|tel|integer|null: false|
|email|string|null: false|
|reserve_date|datetime|null: false|
|reserve_time|datetime|null: false|
|people_count|integer|null: false|
|request|text||

### Association
- belongs_to :user
- belongs_to :shop


## images table

|Column|Type|Options|
|------|----|-------|
|pic1|string||
|pic2|string||
|pic3|string||
|pic4|string||
|pic5|string||

### Association
- belongs_to :review


## relationshipsテーブル
|Column|Type|Options|
|------|----|-------|
|follower_id|integer|add_index :relationships, :follower_id|
|following_id|integer|add_index :relationships, :following_id|
|       |   |add_index :relationships, [:follower_id, :following_id], unique: true|

### Association
-belongs_to :follower, class_name: "User"
-belongs_to :following, class_name: "User"
-validates :follower_id, presence: true
-validates :following_id, presence: true


## likesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|foreign_key: true, null: false|
|review_id|references|foreign_key: true, null: false|

### Association
-belongs_to :user
-belongs_to :review


## review_tagsテーブル
|Column|Type|Options|
|------|----|-------|
|tag_id|references|foreign_key: true, null: false, index: true|
|review_id|references|foreign_key: true, null: false, index: true|

### Association
-belongs_to :user
-belongs_to :review


## tagsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|

### Association
-has_many :review_tags
-has_many :reviews, through: :review_tags

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique: true, index: true|
|avatar|string|
|background-image|string|

### Association
- has_many :reviews
- has_many :like_reviews, through: :likes, source: :review
- has_many :likes, dependent: :destroy
- has_many :relationships
- has_many :following_relationships, foreign_key: "follower_id", class_name: "Relationship", dependent: :destroy
- has_many :followings, through: :following_relationships
- has_many :follower_relationships, foreign_key: "following_id", class_name: "Relationship", dependent: :destroy
- has_many :followers, through: :follower_relationships
- has_many :reservations


## shops table
|Column|Type|Options|
|------|----|-------|
|shop_name|string|null: false, index: true|
|shop_name_f|string|null: false|
|phone_number|integer|null: false|
|prefecture|string|null: false|
|city_address|string|null: false|
|building|string||
|map|text||
|area|string|null: false|
|hours|string||
|closed_day|string||
|budget|string||
|reservation|string||
|payment|string||
|private_room|integer||
|capacity|string||
|chartered|integer||
|parking|integer||
|smorking|integer||
|dish|integer||
|drink|integer||
|nomiho|integer||
|course|integer||
|service_charge|string||
|location|integer||
|facility_atmosphere|integer||
|kids|integer||
|homepage|string||
|official_account1|string||
|official_account2|string||
|official_account3|string||
|open_date|string||
|others|string||
|dress_code|string||
|confirmation_method|integer|null: false|
|comment|text||

### Association
- has_many :reservations
- has_many :reviews
- has_many :shop-genres
- has_many :genres, through: : shop_genres


## genres table
|Column|Type|Options|
|------|----|-------|
|name|string||

### Association
- has_many :shop_genres
- has_many :shops, through: :shop_genres


## shop_genres table
|Column|Type|Options|
|------|----|-------|
|shop_id|references|foreign_key: true, null: false, index: true|
|genre_id|references|foreign_key: true, null: false, index: true|

### Association
- belongs_to :shop
- belongs_to :genre
