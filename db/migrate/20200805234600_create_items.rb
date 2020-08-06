class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :item_name
      t.float :purchase_price
      t.string :date_purchased
      t.string :date_sold
      t.boolean :sold, default: false

      t.timestamps
    end
  end
end
