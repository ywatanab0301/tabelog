class ReviewBudget < ApplicationRecord
  belongs_to :review, optional: true
  belongs_to :budget, optional: true
end
