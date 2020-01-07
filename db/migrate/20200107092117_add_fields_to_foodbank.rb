class AddFieldsToFoodbank < ActiveRecord::Migration[5.2]
  def change
    change_table :foodbanks do |t|

      t.string :name      
      t.string :parent_organisation

      t.string :address
      t.float :lat
      t.float :lng

      t.boolean :approved

    end
    
  end
end
