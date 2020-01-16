class TryAgain < ActiveRecord::Migration[5.2]
  def change

    create_table :shopping_list_items, id: false do |t|
      t.belongs_to :user
      t.belongs_to :food

      t.string :priority
      t.integer :position

      t.timestamps
    end

    # add_index :shopping_list_items, :user_id
    # add_index :shopping_list_items, :food_id


  end
end
