class ItemSerializer < ActiveModel::Serializer
  attributes :id, :plot, :magical, :item_name, :description, :weight, :quantity, :cost
  has_many :inventory_items
end
