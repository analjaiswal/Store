class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :ptype
      t.string :pname
      t.string :pprice
      t.text :description
      t.integer :pquantity

      t.timestamps
    end
  end
end
