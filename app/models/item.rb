class Item < ApplicationRecord
  belongs_to :user, inverse_of: :item
  has_many :bids, dependent: :destroy, inverse_of: :item
end
