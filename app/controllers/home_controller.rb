class HomeController < ApplicationController
    def show
        @user = User.all
    end 
end