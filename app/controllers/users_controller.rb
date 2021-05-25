class UsersController < ApplicationController
    def index

    end

    def show

    end

    def new
        @user = User.new 
    end

    def create
        create_user
    end

    def edit

    end

    def update

    end

    private 

    def user_params
        params.require(:user).permit(:name, :email, :user_type)
    end

    def create_user
        if user_params[:user_type] = "Trainer"
            @trainer = Trainer.find_or_create_by(name: user_params[:name], email: user_params[:email], id: user_params[:id])
            redirect_to trainer_path(@trainer)
        elsif user_params[:user_type] = "Athlete"
            flash.alert = "Model Pending"
        else
            flash.alert = "Please let us know if you are a trainer or an athlete."
        end
    end
end