class CreateCapitals < ActiveRecord::Migration[6.0]
  def change
    create_table :capitals do |t|
      t.string :name
      t.integer :population
      t.integer :country_id

      t.timestamps
    end
  end
end
