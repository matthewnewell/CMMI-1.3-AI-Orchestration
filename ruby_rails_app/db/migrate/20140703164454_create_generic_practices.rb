class CreateGenericPractices < ActiveRecord::Migration
  def change
    create_table :generic_practices do |t|
      t.string :name
      t.text :summary
      t.text :description
      t.integer :generic_goal_id

      t.timestamps
    end
  end
end
