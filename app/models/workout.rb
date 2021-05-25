class Workout < ApplicationRecord
    belongs_to :trainer
    has_many :exercises 
end
