class CreateShopBudgets < ActiveRecord::Migration[5.0]
  def change
    create_table :shop_budgets do |t|
      t.references :shop, index: true, foreign_key: true
      t.references :budget, index: true, foreign_key: true
      t.timestamps
    end
  end
end
