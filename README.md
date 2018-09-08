## reviewsテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|time|integer||
|price|integer||
|rate |integer||
|food_rate |integer||
|service_rate|integer||
|atomosphier_rate|integer||
|cp_rate|integer||
|drink_rate|integer||
|title|string||
|text|text||
|images_id|references||
|review_tag_id|references||
|visit_day|daterime||
|share_with|integer||

### Association
- belongs_to :user
- has_many :likes
- has_many :images
- belongs_to :shops
- has_many :review-tag
