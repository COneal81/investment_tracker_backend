class Api::V1::ExpensesController < ApplicationController
    before_action :find_item

    def index
        @expenses = @item.expenses
        render json: @expenses
    end

    def create
        @expense = @item.expenses.new(expenses_params)
        if @item.breakeven(@expense)
            @expense.save
            render json: @expense
        else
            render json: {error: "Your expense was not saved.  Please try again."}
        end
    end

    def show
        @expense = Expense.find(params[:id])
        render json: @expense
    end

    def destroy
        @expense = Expense.find(params[:id])
        @expense.destroy
        render json: {message: "#{@expense.item_name} has been removed."}
    end

    private
    
    def find_item
        @item = Item.find(params[:item_id])
    end

    def expenses_params
        params.require(:item).permit(:item_id, :expense_amount, :date, :destription)
    end



end

