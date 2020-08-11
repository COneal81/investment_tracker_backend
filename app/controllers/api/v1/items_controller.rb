class Api::V1::ItemsController < ApplicationController
    before_action :set_item, only: [:show, :update, :destroy]

    def index
        @items = Item.all 
        render json: @items
    end

    def create
        # binding.pry
        @item = Item.new(items_params)
        if @item.save
            render json: @item
        else
            render json: {error: "Item was not saved.  Please try again."}
        end
    end

    def show
        @item = Item.find(params[:id])
        render json: @item
    end

    def update
    #    byebug
       @item = Item.find(params[:id])
        @item.update(items_params)
        @item.save
            render json: @item
       
    end

      

    def destroy
        @item.destroy
        render json: {message: "#{@item.item_name} has been removed."}
    end

    private
    
    def set_item
        @item = Item.find(params[:id])
    end

    def items_params
        params.require(:item).permit(:item_name, :purchase_price, :date_purchased, :date_sold, :sold, :breakeven_point, :id)
    end
end

