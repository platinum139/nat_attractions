class CreateAttractions < ActiveRecord::Migration[6.0]
  def change
    create_table :attractions do |t|
      t.string :name
      t.string :description
      t.integer :country_id

      t.timestamps
    end
  end
end
