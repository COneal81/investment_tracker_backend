class ItemSerializer < ActiveModel::Serializer
  attributes :id, :item_name, :purchase_price, :date_purchased, :date_sold, :sold, :breakeven_point

  has_many :expenses
end


