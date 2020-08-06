class Item < ApplicationRecord
    has_many :expenses

    validates :item_name, :purchase_price, :date_purchased, presence: true

    def breakeven(expense)
        self.breakeven_point = self.purchase_price + expense.expense_amount
        self.save
    end
end

