class LoginController < ApplicationController
    def new
        @user = User.new
    end
    def login
        @user = User.find_by(email: params[:user][:email].downcase)
                if @user && @user.authenticate(params[:user][:password])
                    redirect_to root_path, notice: "Ola"
                else 
                    puts "Deu ruim"
                end
            
    end
end