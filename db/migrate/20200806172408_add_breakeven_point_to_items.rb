class AddBreakevenPointToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :breakeven_point, :float
  end
end
