class ShoppingListItemController < ApplicationController
    def sort

        # byebug

        unless params["priority"] === "unsorted"
            params["items"].each_with_index do |item, index|

                # byebug

                ShoppingListItem.find_or_initialize_by({
                    user_id: current_user.id,
                    food_id: Integer(item)
                }).tap do | r |
                    r.priority = params["priority"]
                    r.position = index
                    r.save
                end
            end
        end


        # 1. parse the list name, and delete all records that match:
        #   - the priority
        #   - the user_id (from current_user)
        # (this might not be necessary, need to test it out)

        # 2. for each item in the array, create_or_update a record with the:
        #   - right priority
        #   - right user_id (from current_user)
        #   - right food_id

    end
end
