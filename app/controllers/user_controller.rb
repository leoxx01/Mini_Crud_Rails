class UserController < ApplicationController
    def new
        @user = User.new
    end
    def create
        @user = User.new(users_params)
        if @user.save
            redirect_to "/", notice: "Cadastrado com sucesso #{@user.name}"
        end
        
    end
    def users_params
        params.require(:user).permit(:name,:email,:password)
    end
   
end