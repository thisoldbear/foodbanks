class FoodbankController < ApplicationController
    before_action :authenticate_foodbank!, only: [:dashboard]

    def dashboard
        @foodbank = current_foodbank
    end

    def search
    end

    def list
    end
end
