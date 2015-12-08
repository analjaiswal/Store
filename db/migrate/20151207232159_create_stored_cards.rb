class CreateStoredCards < ActiveRecord::Migration
  def change
    create_table :stored_cards do |t|
      t.integer :creditcard_id
      t.integer :customer_id

      t.timestamps
    end
  end
end
