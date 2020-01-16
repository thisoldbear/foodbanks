class ShoppingListItem < ApplicationRecord
    belongs_to :user
    belongs_to :food

    self.primary_key = :food_id
end