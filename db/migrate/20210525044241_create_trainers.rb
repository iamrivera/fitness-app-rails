class CreateTrainers < ActiveRecord::Migration[6.1]
  def change
    create_table :trainers do |t|
      t.string :name
      t.integer :rating
      t.string :email

      t.timestamps
    end
  end
end
