class AddLastNameToAthletes < ActiveRecord::Migration[6.1]
  def change
    add_column :athletes, :last_name, :string
  end
end
