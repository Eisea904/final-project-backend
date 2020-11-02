class CreateShops < ActiveRecord::Migration[6.0]
  def change
    create_table :shops do |t|
      t.string :name, default: ""
      t.string :bio, default: ""
      t.integer :roses, default: 100
      t.integer :electrum, default: 250
      t.boolean :open, default: false
      t.string :image, default: ""
      t.string :password_digest, default: ""

      t.timestamps
    end
  end
end
