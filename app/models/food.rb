class FoodItem < ApplicationRecord
    has_many :shopping_list_items
    has_many :foodbanks, through: :shopping_list_items
end
