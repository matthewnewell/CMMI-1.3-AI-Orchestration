class CreateGenericGoals < ActiveRecord::Migration
  def change
    create_table :generic_goals do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
