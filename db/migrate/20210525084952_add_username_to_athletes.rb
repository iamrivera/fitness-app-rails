class AddUsernameToAthletes < ActiveRecord::Migration[6.1]
  def change
    add_column :athletes, :username, :string
  end
end
