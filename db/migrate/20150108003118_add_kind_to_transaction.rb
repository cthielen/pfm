class AddKindToTransaction < ActiveRecord::Migration
  def change
    add_column :transactions, :kind, :integer
  end
end
