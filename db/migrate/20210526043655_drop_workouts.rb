class DropWorkouts < ActiveRecord::Migration[6.1]
  def change
    drop_table :workouts
  end
end
