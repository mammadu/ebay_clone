class CreateBids < ActiveRecord::Migration[7.0]
  def change
    create_table :bids do |t|
      t.bigint :user_id
      t.bigint :item_id
      t.integer :bid_amount #bid_amount is in cents
      t.timestamps
    end
  end
end
