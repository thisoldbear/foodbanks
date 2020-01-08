class ProperFix < ActiveRecord::Migration[5.2]
  def change
    rename_column :shopping_list_items, :food_item_id, :food_id
  end
end
