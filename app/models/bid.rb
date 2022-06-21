class Bid < ApplicationRecord
  belongs_to :user, inverse_of: :bid
  belongs_to :item, inverse_of: :bid
end
