class User < ApplicationRecord
  has_many :shopping_list_items
  has_many :foods, through: :shopping_list_items

  # before_save :geocode
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # acts_as_mappable

  # def geocode
  #   # https://developer.mapquest.com/documentation/geocoding-api/
  #   res = HTTParty.get("http://www.mapquestapi.com/geocoding/v1/address?key=#{Rails.application.credentials.mapquest_key}&location=#{self.address}")
  #   data = JSON.parse(res.body)
  #   lat_lng = data["results"][0]["locations"][0]["latLng"]
  #   self.lat = lat_lng["lat"]
  #   self.lng = lat_lng["lng"]
  # end

end

