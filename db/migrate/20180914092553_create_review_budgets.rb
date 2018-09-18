class CreateReviewBudgets < ActiveRecord::Migration[5.0]
  def change
    create_table :review_budgets do |t|
      t.references :review, index: true, foreign_key: true
      t.references :budget, index: true, foreign_key: true
      t.timestamps
    end
  end
end
