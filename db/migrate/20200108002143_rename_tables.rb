class RenameTables < ActiveRecord::Migration[5.2]
  def change

    rename_table :foodbanks, :users

  end
end
