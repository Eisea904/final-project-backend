class Item < ApplicationRecord
    has_many :inventory_items
    has_many :parties, through: :inventory_items
end
