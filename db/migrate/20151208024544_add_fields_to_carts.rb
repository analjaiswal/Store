class AddFieldsToCarts < ActiveRecord::Migration
  def change
    add_column :carts, :product_id, :integer
    add_column :carts, :quantity, :integer
    add_column :carts, :total, :integer
  end
end
