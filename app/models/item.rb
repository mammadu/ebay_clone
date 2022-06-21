class Item < ApplicationRecord
  belongs_to :user, inverse_of: :item
end
