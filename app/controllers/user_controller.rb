class UserController < ApplicationController
    def new
        @user = User.new
    end
    def create
        @user = User.new(users_params)
        @user.save
        redirect_to "/"
    end
    def users_params
        params.require(:user).permit(:name,:email,:password)
    end
   
end