class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.datetime :cleared_at
      t.datetime :reconciled_at
      t.integer :account_id
      t.decimal :amount
      t.integer :vendor_id
      t.integer :category_id
      t.text :notes
      t.integer :split_id

      t.timestamps null: false
    end
  end
end
