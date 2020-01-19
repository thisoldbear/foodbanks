class AddStreetAddressToUser < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :address, :street_address
    add_column :users, :postcode, :string
  end
end
