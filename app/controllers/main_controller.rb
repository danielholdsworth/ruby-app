class MainController < ApplicationController
    def index
        flash[:notice] = "Logged In Successfully"
        flash[:alert] = "Invalid email or password!"
    end
end