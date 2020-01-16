class FixJoinTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :shopping_list_items

    create_table :shopping_list_items, id: false do |t|
      t.belongs_to :user_id
      t.belongs_to :food_id
      t.string :priority
      t.integer :position
      t.timestamps
    end

  end
end
