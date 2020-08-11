class Api::V1::ExpensesController < ApplicationController
    before_action :find_item

    def index
        @expenses = @item.expenses
        render json: @expenses
    end

    def create
        @expense = @item.expenses.new(expenses_params)
        if @item.breakeven(@expense)
            # byebug
            
            # send bach the item b/c the item will have the expense associated with it so when we get to 
            # our reducer, instead of having to find that item, and replace it with the item that is coming back
            render json: @item
        else
            render json: {error: "Your expense was not saved.  Please try again."}
        end
    end

    def show
        @expense = Expense.find(params[:id])
        render json: @expense
    end

    def destroy
       byebug
        @expense = Expense.find(params["id"])
        @item = Item.find(@expense.item_id)
         @expense.destroy
        render json: @item
    end

    private
    
    def find_item
        @item = Item.find(params[:item_id])
    end

    def expenses_params
        params.require(:expense).permit(:expense_amount, :date, :destription, :item_id)
    end



end

