class Item < ApplicationRecord
    has_many :expenses

    validate :item_name, :purchase_price, :date_purchased, presence: true
end

