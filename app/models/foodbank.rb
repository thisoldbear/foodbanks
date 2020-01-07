class Foodbank < ApplicationRecord
  has_many :shopping_list_items
  has_many :foods, through: :shopping_list_items

  before_save :geocode
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def geocode
    # get lat and lng columns from address here
    # https://developer.mapquest.com/documentation/geocoding-api/
  end

end
