# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Item.destroy_all
Expense.destroy_all

# Items
old_desk = Item.create(item_name: "Old Desk", purchase_price: 25.00, date_purchased: "8/2/20", date_sold: "", sold: false, breakeven_point: 0.00)
rocking_chair = Item.create(item_name: "Rocking Chair", purchase_price: 10.00, date_purchased: "1/1/11", date_sold: "1/10/11", sold: true, breakeven_point: 0.00)


# Expenses
old_desk_expense_1 = Expense.create(item_id: old_desk.id, expense_amount: 5.25, date: "8/2/20",  destription:"White Paint")
old_desk_expense_2 = Expense.create(item_id: old_desk.id, expense_amount: 15.50, date: "8/3/20",  destription:"Handles for drawers")

rocking_chair_expense_1 = Expense.create(item_id: rocking_chair.id, expense_amount: 7.25, date:"1/2/11" ,  destription:"Old American Stain")
rocking_chair_expense_2 = Expense.create(item_id: rocking_chair.id, expense_amount: 1.25, date:"1/2/11" ,  destription:"Sandpaper")