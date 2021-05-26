class DropAthletes < ActiveRecord::Migration[6.1]
  def change
    drop_table :athletes 
  end
end
