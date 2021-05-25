class Athlete < ApplicationRecord
    has_many :workouts
    has_many :trainers, through: :workouts
end
