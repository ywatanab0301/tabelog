class Want < ApplicationRecord
  validates :user_id, :uniqueness => {:scope => :shop_id}

  belongs_to :user, counter_cache: :wants_count
  belongs_to :shop
end
