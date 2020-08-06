class Expense < ApplicationRecord
  belongs_to :item

  validates :item_id, :expense_amount, :date, :destription, presence: true
end

