class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)
        if @user.save
            flash[:success] = "user created successfully"
            redirect_to login_url
        else
            flash[:danger] = @user.errors.full_messages.first
            render 'new'
        end
    end
    
    private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end            

end
