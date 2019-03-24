class CreateAgents < ActiveRecord::Migration[5.2]
  def change
    create_table :agents do |t|
      t.string :name
      t.integer :discount_age
      t.decimal :minimum_incoming
      t.decimal :rate
      t.references :neighborhood, foreign_key: true

      t.timestamps
    end
  end
end
