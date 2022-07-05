class Item < ApplicationRecord
  belongs_to :user, inverse_of: :item
  has_many :bids, dependent: :destroy, inverse_of: :item

  validates :name, :initial_price, :seller_id, :auction_end_date, presence: true
end
