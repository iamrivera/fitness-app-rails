class AddFirstNameToAthletes < ActiveRecord::Migration[6.1]
  def change
    add_column :athletes, :first_name, :string
  end
end
