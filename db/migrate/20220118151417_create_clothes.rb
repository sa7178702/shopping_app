class CreateClothes < ActiveRecord::Migration[7.0]
  def change
    create_table :clothes do |t|
      t.string :name
      t.string :size
      t.float :price
      t.float :quantity
      t.string :brand
      t.references :gender, null: false, foreign_key: true

      t.timestamps
    end
  end
end
