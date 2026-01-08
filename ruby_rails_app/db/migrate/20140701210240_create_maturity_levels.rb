class CreateMaturityLevels < ActiveRecord::Migration
  def change
    create_table :maturity_levels do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
