class CreateExercises < ActiveRecord::Migration[5.2]
  def change
    create_table :exercises do |t|
      t.text :name
      t.text :body_area
      t.text :description
      t.text :video

      t.timestamps
    end
  end
end
