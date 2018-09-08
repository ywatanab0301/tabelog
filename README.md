## reviewsテーブル

|Column|Type|Options|
|------|----|-------|
|user|references|null: false, foreign_key: true|
|time|integer|null: false|
|price|integer|null: false|
|rate |integer|null: false|
|food_rate |integer|null: false|
|service_rate|integer|null: false|
|atomosphier_rate|integer|null: false|
|cp_rate|integer|null: false|
|drink_rate|integer|null: false|
|title|string|null: false|
|text|text|null: false|
|images|references||
|visit_day|datetime|null: false|
|share_with|integer|null: false|

### Association
- belongs_to :user
- has_many :likes
- has_many :images
- belongs_to :shop
- has_many :review-tags

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
