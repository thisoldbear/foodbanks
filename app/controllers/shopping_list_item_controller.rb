class ShoppingListItemController < ApplicationController
    def sort

        params["items"].each_with_index do |item, index|
            r = current_user.shopping_list_items.where(food_id: Integer(item)).first_or_initialize
            unless params["priority"] === "unsorted"
                r.priority = params["priority"]
                r.position = index
                r.save
            else
                r.destroy
            end
        end

    end
end
