class CreateCreditcards < ActiveRecord::Migration
  def change
    create_table :creditcards do |t|
      t.integer :secnumber
      t.string :ownername
      t.string :cctype
      t.string :ccaddress
      t.datetime :expdate

      t.timestamps
    end
  end
end
