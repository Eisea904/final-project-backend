class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.boolean :plot, default: false
      t.boolean :magical, default: false
      t.string :item_name, default: ""
      t.string :description, default: ""
      t.integer :weight, default: 1
      t.integer :quantity, default: 1
      t.integer :cost, default: 0

      t.timestamps
    end
  end
end
