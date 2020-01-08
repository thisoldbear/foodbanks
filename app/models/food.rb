class FoodItem < ApplicationRecord
    has_many :shopping_list_items
    has_many :users, through: :shopping_list_items
end
