class InventoryItem < ApplicationRecord
  belongs_to :shop
  belongs_to :item
end
