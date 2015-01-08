class CreateBudgets < ActiveRecord::Migration
  def change
    create_table :budgets do |t|
      t.string :name
      t.integer :category_id
      t.decimal :amount
      t.datetime :start_at
      t.integer :duration
      t.boolean :repeating

      t.timestamps null: false
    end
  end
end
