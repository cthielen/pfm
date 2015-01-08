class CreateVendorAliases < ActiveRecord::Migration
  def change
    create_table :vendor_aliases do |t|
      t.string :alias

      t.timestamps null: false
    end
  end
end
