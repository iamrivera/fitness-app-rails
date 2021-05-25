class CreateAthletes < ActiveRecord::Migration[6.1]
  def change
    create_table :athletes do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
