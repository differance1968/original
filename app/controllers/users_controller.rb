class UsersController < ApplicationController
    def new
      @user = User.new
    end
    
    def show
      @user = User.find(params[:id])
    end
    
    def create
      @user = User.new(user_params)
      if @user.save
        flash[:success] ="ようこそ〜へ！"
        redirect_to @user
      else
        render 'new'
      end
    end
    
    private
    
    def correct_user
      if current_user != @user
        redirect_to root_path
      end
    end
    
    def user_params
      params.require(:user).permit(:name,:email)
    end
end
        
