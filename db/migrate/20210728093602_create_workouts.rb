class CreateWorkouts < ActiveRecord::Migration[5.2]
  def change
    create_table :workouts do |t|
      t.text :name
      t.text :category
      t.text :age_range
      t.text :description

      t.timestamps
    end
  end
end
