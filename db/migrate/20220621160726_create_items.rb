class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :denomination
      t.decimal :initial_price
      t.decimal :highest_bid
      t.integer :total_sold
      t.integer :total_inventory
      t.timestamps
    end
  end
end