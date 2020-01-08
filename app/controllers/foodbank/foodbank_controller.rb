class Foodbank::FoodbankController < ApplicationController
    before_action :authenticate_foodbank!

    def index
        @foodbank = current_foodbank
    end

end
