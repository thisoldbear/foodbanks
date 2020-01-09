class ShoppingListItemController < ApplicationController
    def sort

        # byebug

        respond_to do |format|
            format.json { render json: params }
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
