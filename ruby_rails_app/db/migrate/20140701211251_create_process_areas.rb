class CreateProcessAreas < ActiveRecord::Migration
  def change
    create_table :process_areas do |t|
      t.string :name
      t.text :purpose
      t.integer :maturity_level_id
      t.integer :process_area_category_id

      t.timestamps
    end
  end
end
