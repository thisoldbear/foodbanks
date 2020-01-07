class ConvertJoinTableToModel < ActiveRecord::Migration[5.2]
  def change

    change_table :foodbanks_food_items do |t|
      t.timestamps
    end

    rename_table :foodbanks_food_items, :shopping_list_items
    rename_table :food_items, :foods

  end
end
