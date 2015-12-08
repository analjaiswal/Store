class CreateOfferproducts < ActiveRecord::Migration
  def change
    create_table :offerproducts do |t|
      t.integer :product_id
      t.integer :offerprice

      t.timestamps
    end
  end
end
