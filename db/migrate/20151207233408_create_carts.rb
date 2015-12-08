class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.integer :customer_id
      t.string :saname
      t.integer :creditcard_id
      t.string :tstatus
      t.datetime :tdate

      t.timestamps
    end
  end
end
