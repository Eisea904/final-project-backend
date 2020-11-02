class InventoryItemSerializer < ActiveModel::Serializer
  attributes :id, :shop_id, :item_id
  has_one :shop
  has_one :item
end
