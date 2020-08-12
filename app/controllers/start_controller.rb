class StartController < ApplicationController
    
    def new
        @user = User.new
    end
    def edit
        @user = User.find(params[:id])
    end 
    def create
        @user = User.new(user_params)
        if @user.save
            
        end
        
    end
    def update
        @user = User.find(params[:id])
        if @user.update(user_params)
            redirect_to root_path, notice: "Editado com sucesso"
        else
            render :edit
        end
        
    end

    private

    def user_params
        params.require(:teste).permit(:name,:email,:password)
    end
end