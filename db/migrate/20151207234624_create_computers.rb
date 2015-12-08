class CreateComputers < ActiveRecord::Migration
  def change
    create_table :computers do |t|
      t.integer :product_id
      t.string :cputype

      t.timestamps
    end
  end
end
