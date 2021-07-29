class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :email
      t.text :name
      t.text :surname
      t.date :dob
      t.text :phone
      t.integer :workout_id

      t.timestamps
    end
  end
end
