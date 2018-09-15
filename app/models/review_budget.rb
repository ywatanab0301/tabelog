class ReviewBudget < ApplicationRecord
  belongs_to :review
  belongs_to :budget
end
