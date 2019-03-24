class CreateHouses < ActiveRecord::Migration[5.2]
  def change
    create_table :houses do |t|
      t.integer :x
      t.integer :y
      t.decimal :price

      t.timestamps
    end
  end
end
