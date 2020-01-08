class User::UserController < ApplicationController
    before_action :authenticate_user!

    def index
        @foodbank = current_user
    end

end
