class Api::V1::ItemsController < ApplicationController
    def index
        @items = Item.all 
        render json: @items
    end

    def create
        @item = Item.create(items_params)
        if @item.save
            render json: @item
    end


    def items_params
        params.require(:item).permit(:item_name, :purchase_price, :date_purchased, :date_sold, :sold, :breakeven_point)
    end
end

