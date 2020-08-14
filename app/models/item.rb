class Item < ApplicationRecord
    has_many :expenses

    validates :item_name, :purchase_price, :date_purchased, presence: true

    def initial_breakeven
        self.breakeven_point ||= self.purchase_price 
        self.save
    end

    def breakeven(expense)
        self.breakeven_point ||= self.purchase_price 
        self.breakeven_point = self.breakeven_point + expense.expense_amount
        self.save
    end

    def breakeven_delete_expense(expense)
        self.breakeven_point = self.breakeven_point - expense.expense_amount
        self.save
    end
end

