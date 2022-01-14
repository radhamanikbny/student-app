class AdminController < ApplicationController
    skip_before_action :authorized, only: [:login, :create]
    def index
    end
    def login
    end
    def create
        if authenticate_user
            session[:user_id] = @user.id
            AdminMailer.with(user: @user).welcome_email.deliver
            redirect_to students_url
        else
            render :login
        end
    end
    def logout
        session[:user_id] = nil
        flash[:notice] = "You have been signed out!"
        render :login
    end
    private
    def authenticate_user
        @user = User.where(:email => params[:username], :password => params[:password]).last
        if !@user.nil?
            return true
        else
            return false
        end
    end
end
