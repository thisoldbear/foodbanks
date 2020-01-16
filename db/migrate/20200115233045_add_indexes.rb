class AddIndexes < ActiveRecord::Migration[5.2]
  def change
    drop_table :shopping_list_items
  end
end
