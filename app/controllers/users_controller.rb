class UsersController < ApplicationController
    def index
        users = User.all
        render json: users
    end

    def create
        # user = User.find_by(user:user_params[:username])
        # if !user
        #     user = user.create(user_params)
        # end
        user = User.create(user_params)
        if user.valid?
            render json: user
        else
            byebug
            render json: { username: user_params  }
        end 
    end

    def show
        user = User.find(params[:id])
        render json: user, include: { agendas: { include: [:tasks]}}
    end    

    private

    def user_params
        params.require(:user).permit(:username, :id)
    end

end