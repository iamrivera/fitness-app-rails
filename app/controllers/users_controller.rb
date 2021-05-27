class UsersController < ApplicationController
    
    #GET /register - New User Action
    def new
       @user = User.new
       if session[:current_user_id]
        redirect_to "/", :notice => "Already logged in!"
       end
    end

    #POST /users - Create the User Action 
    def create 
        @user = User.new
        @user.name = params[:name]
        @user.save

        redirect_to "/login"
    end


end
