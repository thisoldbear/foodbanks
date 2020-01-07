class AssociateFoodWithBanks < ActiveRecord::Migration[5.2]
  def change
 
    create_table :foodbanks_food_items, id: false do |t|
      t.belongs_to :foodbanks
      t.belongs_to :food_items
    end

  end
end
