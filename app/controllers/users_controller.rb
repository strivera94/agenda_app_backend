class UsersController < ApplicationController
    def index
        users = User.all
        render json: users, include: { agendas: { include: [:tasks]}}
    end

    def show
        user = User.find(params[:id])
        render json: user, include: { agendas: { include: [:tasks]}}
    end    
end