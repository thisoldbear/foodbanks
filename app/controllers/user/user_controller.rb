class User::UserController < ApplicationController
    before_action :authenticate_user!

    def index
        @foodbank = current_user
        @urgent = current_user.shopping_list_items.where(priority: "urgent")
        @needed = current_user.shopping_list_items.where(priority: "needed")

        ids = current_user.shopping_list_items.pluck(:food_id)
        @unsorted_foods = Food.where.not(id: ids)



    end

end
