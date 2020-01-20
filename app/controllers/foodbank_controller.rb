class FoodbankController < ApplicationController
    def index
        if cookies[:foodbank].present?
            redirect_to foodbank_path(cookies[:foodbank])
        end
        
        if params[:postcode].present?
            @results = User.near(params[:postcode], 20000, params: {countrycodes: "gb"}).limit(3)
        end

        if params[:lat].present? && params[:lng].present?
            @results = User.near([params[:lat], params[:lng]], 20000).limit(3)
        end
    end

    def show
        @foodbank = User.find(params[:id])
        cookies[:foodbank] = @foodbank.id
    end

    def clear
        cookies.delete :foodbank
        redirect_to root_path
    end
end
