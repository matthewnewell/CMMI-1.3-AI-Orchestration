class CreateSpecificPractices < ActiveRecord::Migration
  def change
    create_table :specific_practices do |t|
      t.string :name
      t.text :summary
      t.text :description
      t.integer :specific_goal_id

      t.timestamps
    end
  end
end
