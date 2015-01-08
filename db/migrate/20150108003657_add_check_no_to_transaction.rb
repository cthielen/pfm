class AddCheckNoToTransaction < ActiveRecord::Migration
  def change
    add_column :transactions, :check_no, :integer
  end
end
