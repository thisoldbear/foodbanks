class User::UserController < ApplicationController
    before_action :authenticate_user!

    def index
        @foodbank = current_user
        @foods = Food.all
    end

end
