class CreateMeasurements < ActiveRecord::Migration[5.2]
  def change
    create_table :measurements do |t|
      t.float :weight
      t.float :height
      t.float :body_fat
      t.integer :user_id

      t.timestamps
    end
  end
end
