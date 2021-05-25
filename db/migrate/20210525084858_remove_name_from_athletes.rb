class RemoveNameFromAthletes < ActiveRecord::Migration[6.1]
  def change
    remove_column :athletes, :name, :string
  end
end
