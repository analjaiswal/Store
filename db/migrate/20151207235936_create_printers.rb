class CreatePrinters < ActiveRecord::Migration
  def change
    create_table :printers do |t|
      t.integer :product_id
      t.string :printertype
      t.integer :resolution

      t.timestamps
    end
  end
end
