class UsersController < ApplicationController

    def show
        @user = User.find(params[:id]) 
    end

    def update
      if @user.update(user_params)
        redirect_to user_path(current_user.id)
      else
        render :edit
      end
    end
    #省略
    private
    def user_params
      params.require(:user).permit(:name, :email, :image)
    end
      
end
