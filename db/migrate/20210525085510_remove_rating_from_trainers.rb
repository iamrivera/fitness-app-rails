class RemoveRatingFromTrainers < ActiveRecord::Migration[6.1]
  def change
    remove_column :trainers, :rating, :integer
  end
end
