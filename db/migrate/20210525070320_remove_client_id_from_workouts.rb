class RemoveClientIdFromWorkouts < ActiveRecord::Migration[6.1]
  def change
    remove_column :workouts, :client_id, :integer
  end
end
