class FixAssociation < ActiveRecord::Migration[5.2]
  def change
    rename_column :shopping_list_items, :users_id, :user_id
    rename_column :shopping_list_items, :food_items_id, :food_item_id
  end
end
