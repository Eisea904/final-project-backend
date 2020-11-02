class Shop < ApplicationRecord
    has_many :inventory_items
    has_many :items, through: :inventory_items
end
