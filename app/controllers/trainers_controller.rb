class TrainersController < ApplicationController
    def index

    end

    def show
        @trainer = Trainer.find(session[:id])
        @workout = Workout.new
    end

    def new

    end

    def create

    end

    def edit

    end

    def update

    end
end