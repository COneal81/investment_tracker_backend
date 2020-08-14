class Item < ApplicationRecord
    has_many :expenses

    validates :item_name, :purchase_price, :date_purchased, presence: true

    def initial_breakeven
        self.breakeven_point ||= self.purchase_price.round 
        self.save
    end

    def breakeven(expense)
        self.breakeven_point ||= self.purchase_price.round
        self.breakeven_point = self.breakeven_point.round + expense.expense_amount.round
        self.save
    end

    def breakeven_delete_expense(expense)
        self.breakeven_point = self.breakeven_point.round - expense.expense_amount.round
        self.save
    end
end

