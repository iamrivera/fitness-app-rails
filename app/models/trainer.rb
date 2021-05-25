class Trainer < ApplicationRecord
    has_many :workouts
    has_many :athletes, through: :workouts
    accepts_nested_attributes_for :workouts

    def name
        "#{self.first_name} #{self.last_name}"
    end

    
end
