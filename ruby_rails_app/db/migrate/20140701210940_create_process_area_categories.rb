class CreateProcessAreaCategories < ActiveRecord::Migration
  def change
    create_table :process_area_categories do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
