class User < ApplicationRecord
  has_many :shopping_list_items
  has_many :foods, through: :shopping_list_items

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  geocoded_by :address,
    :latitude => :lat, :longitude => :lng
  after_validation :geocode 

  def address
      [street_address, city, postcode].compact.join(', ')
  end

  def urgent
    self.shopping_list_items.where(priority: "urgent").order(position: :asc)
  end

  def needed
    self.shopping_list_items.where(priority: "needed").order(position: :asc)
  end

  def unsorted
    Food.where.not(id: self.shopping_list_items.pluck(:food_id))
  end

end