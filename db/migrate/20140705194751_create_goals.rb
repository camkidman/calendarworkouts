class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.string :name
      t.string :description
      t.string :how_text

      t.timestamps
    end
  end
end
