class AddColumnToItems < ActiveRecord::Migration[7.0]
  def change
    add_column :items, :auction_end_date, :timestamp
  end
end
