class ShopSerializer < ActiveModel::Serializer
  attributes :id, :name, :bio, :roses, :electrum, :open, :password_digest, :items
  has_many :inventory_items
end
