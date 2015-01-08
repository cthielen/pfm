class AddMemoToTransaction < ActiveRecord::Migration
  def change
    add_column :transactions, :memo, :text
  end
end
