class SessionsController < ApplicationController

    def new
        
    end

    def create
        @user = User.find_by_name(params[:name])
        if @user 
            session[:current_user_id] = @user.id 
            redirect_to "/"
        else
            redirect_to "/login"
        end
    end

end
