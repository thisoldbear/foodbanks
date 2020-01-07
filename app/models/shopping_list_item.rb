class ShoppingListItem < ApplicationRecord
    belongs_to :foodbank
    belongs_to :food
end