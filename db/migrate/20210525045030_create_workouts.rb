class CreateWorkouts < ActiveRecord::Migration[6.1]
  def change
    create_table :workouts do |t|
      t.integer :trainer_id
      t.integer :client_id

      t.timestamps
    end
  end
end
