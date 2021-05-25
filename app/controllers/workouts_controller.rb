class WorkoutsController < ApplicationController
    def index

    end

    def show

    end

    def new
        @workout = Workout.new
    end

    def create
        raise params.inspect
    end

    def edit

    end

    def update

    end

    private 
    def workout_params
        params.require(:workout).permit(:name, :description, :exercise_ids => [], exercises_attributes:[:name, :reps, :description])
    end
end