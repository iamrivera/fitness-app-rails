class AddDescriptionToWorkouts < ActiveRecord::Migration[6.1]
  def change
    add_column :workouts, :description, :text
  end
end
