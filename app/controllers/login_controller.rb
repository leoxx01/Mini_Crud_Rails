class LoginController < ApplicationController
    def new
        @user = User.new
    end
    def login
        @user = User.find_by(email: params[:user][:email].downcase)
                if @user && @user.authenticate(params[:user][:password])
                    reset_session
                    session[:user_id] = @user.id
                    redirect_to root_path, notice: "Logado com sucesso #{@user.name}"
                else 
                    redirect_to root_path, alert: "Erro ao logar"
                end
    end
    def destroy
        reset_session
        redirect_to root_path, notice: "Sessão finalizada"
    end
end