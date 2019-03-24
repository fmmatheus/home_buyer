class CreateNeighborhoods < ActiveRecord::Migration[5.2]
  def change
    create_table :neighborhoods do |t|
      t.string :name
      t.integer :x1
      t.integer :x2
      t.integer :y1
      t.integer :y2

      t.timestamps
    end
  end
end
