class CreateSpecificGoals < ActiveRecord::Migration
  def change
    create_table :specific_goals do |t|
      t.string :name
      t.text :description
      t.integer :process_area_id

      t.timestamps
    end
  end
end
