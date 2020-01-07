class AddPositionToShoppingListItems < ActiveRecord::Migration[5.2]
  def change
    change_table :shopping_list_items do |t|

      t.integer :position

    end
  end
end
