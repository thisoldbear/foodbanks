class FoodbankController < ApplicationController
    def index
    end

    def search
        # 1. is there a lat/long
        # 2. if not, geocode the input
        # 3. find nearest results via haversine
        # render :json => User.closest(:origin => params[:postcode])

        # location = MapQuestGeocoder.geocode(params[:postcode])
        # render :json => User.closest(:origin => [location.lat, location.lng])

        results = Geocoder.search("Paris")
        render :json => results.first.coordinates

    end

    def show
    end
end
