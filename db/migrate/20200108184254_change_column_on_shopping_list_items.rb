class ChangeColumnOnShoppingListItems < ActiveRecord::Migration[5.2]
  def change
    rename_column :shopping_list_items, :foodbanks_id, :users_id
  end
end
