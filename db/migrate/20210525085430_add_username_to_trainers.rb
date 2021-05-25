class AddUsernameToTrainers < ActiveRecord::Migration[6.1]
  def change
    add_column :trainers, :username, :string
  end
end
