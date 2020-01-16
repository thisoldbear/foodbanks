class User::UserController < ApplicationController
    before_action :authenticate_user!

    def index
        @foodbank = current_user
        @urgent = current_user.shopping_list_items.where(priority: "urgent").order(position: :asc)
        @needed = current_user.shopping_list_items.where(priority: "needed").order(position: :asc)

        ids = current_user.shopping_list_items.pluck(:food_id)
        @unsorted_foods = Food.where.not(id: ids)
    end

end
