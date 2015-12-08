class CreateLaptops < ActiveRecord::Migration
  def change
    create_table :laptops do |t|
      t.integer :product_id
      t.string :btype
      t.integer :weight

      t.timestamps
    end
  end
end
