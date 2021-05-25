class AddAthleteIdToWorkouts < ActiveRecord::Migration[6.1]
  def change
    add_column :workouts, :athlete_id, :integer
  end
end
