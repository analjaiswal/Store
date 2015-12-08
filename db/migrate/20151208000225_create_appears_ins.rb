class CreateAppearsIns < ActiveRecord::Migration
  def change
    create_table :appears_ins do |t|
      t.integer :cart_id
      t.integer :product_id
      t.integer :quantity
      t.integer :pricesold

      t.timestamps
    end
  end
end
