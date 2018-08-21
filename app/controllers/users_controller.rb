class UsersController < ApplicationController
     
    def index
        @user = User.all
        render("users/index.html.erb")
    end

    def show
        @user = User.find(params.fetch("id_to_display"))
        render("users/show.html.erb")
    end

    def my_likes
        @user = User.find(params.fetch("id_to_display"))
        render("users/show.html.erb")
    end

end