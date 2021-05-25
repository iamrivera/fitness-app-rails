class CreateExercises < ActiveRecord::Migration[6.1]
  def change
    create_table :exercises do |t|
      t.string :name
      t.integer :reps
      t.text :description
      t.integer :workout_id
      t.integer :sets

      t.timestamps
    end
  end
end
