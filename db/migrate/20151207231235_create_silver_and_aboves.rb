class CreateSilverAndAboves < ActiveRecord::Migration
  def change
    create_table :silver_and_aboves do |t|
      t.integer :customer_id
      t.boolean :creditline

      t.timestamps
    end
  end
end
