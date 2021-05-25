class UsersController < ApplicationController
    def index

    end

    def show

    end

    def new
        @user = User.new 
    end

    def create
        raise params.inspect
    end

    def edit

    end

    def update

    end
end