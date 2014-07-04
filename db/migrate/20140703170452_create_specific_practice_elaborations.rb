class CreateSpecificPracticeElaborations < ActiveRecord::Migration
  def change
    create_table :specific_practice_elaborations do |t|
      t.integer :specific_practice_id
      t.text :sp_elaboration

      t.timestamps
    end
  end
end
