class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :item_name
      t.float :purchase_price
      t.string :purchase_date
      t.string :sold_date
      t.boolean :sold, default: false

      t.timestamps
    end
  end
end
