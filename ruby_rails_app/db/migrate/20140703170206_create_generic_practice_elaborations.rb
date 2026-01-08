class CreateGenericPracticeElaborations < ActiveRecord::Migration
  def change
    create_table :generic_practice_elaborations do |t|
      t.integer :process_area_id
      t.integer :generic_practice_id
      t.text :gp_elaboration

      t.timestamps
    end
  end
end
