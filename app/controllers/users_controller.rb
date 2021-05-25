class UsersController < ApplicationController
    def index

    end

    def show

    end

    def new
        @user = User.new 
    end

    def create
        create_trainer_or_athlete
    end

    def edit

    end

    def update

    end

    private 

    def user_params
        params.require(:user).permit(:first_name, :last_name, :username, :email, :user_type)
    end

    def create_trainer_or_athlete
        if user_params[:user_type] == "Trainer"
            @trainer = Trainer.find_or_create_by(name: user_params[:name], email: user_params[:email])
            redirect_to trainer_path(@trainer)
        elsif user_params[:user_type] == "Athlete"
            @athlete = Athlete.find_or_create_by(name: user_params[:name], email: user_params[:email])
            redirect_to athlete_path(@athlete)
        else
            redirect_to :root, notice: "Please let us know if you are a trainer or an athlete."
        end
    end
end