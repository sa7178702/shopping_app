class RenameColumnInClothes < ActiveRecord::Migration[7.0]
  def change
    rename_column :clothes, :name, :c_name
  end
end
