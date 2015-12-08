class CreateShippingaddresses < ActiveRecord::Migration
  def change
    create_table :shippingaddresses do |t|
      t.integer :customer_id
      t.string :saname
      t.string :recepientname
      t.string :street
      t.string :snumber
      t.string :city
      t.integer :zip
      t.string :state
      t.string :country

      t.timestamps
    end
  end
end
