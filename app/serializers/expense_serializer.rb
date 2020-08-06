class ExpenseSerializer < ActiveModel::Serializer
   attributes :id, :item_id, :expense_amount, :date, :destription

   
end


