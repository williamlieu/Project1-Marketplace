class UsersController < ApplicationController
  before_action :check_for_login, :only => [:index]

    def index
      @users = User.all
    end

    def new
      @user = User.new
    end

    def create
      @user = User.create user_params
      if @user.save
        session[:user_id] = @user.id
        redirect_to root_path #Redirect to home if the account is valid
       else
        render :new #Let them retry the form again
      end
    end

    private
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation)
    end

  end
