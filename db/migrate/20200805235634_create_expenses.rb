class CreateExpenses < ActiveRecord::Migration[6.0]
  def change
    create_table :expenses do |t|
      t.references :item, null: false, foreign_key: true
      t.float :expense_amount
      t.datetime :date
      t.text :destription

      t.timestamps
    end
  end
end
