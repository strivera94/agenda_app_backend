class AgendasController < ApplicationController
    def index
        agendas = Agenda.all
        render json: agendas
    end

    def show
        agenda = User.find(params[:id])
        render json: agenda
    end

    def create
        agenda = Agenda.create(task_params)
        render json: agenda
    end

    def destroy
        agenda = Agenda.find(params[:id])
        agenda.destroy()
    end

    private

    def task_params
        params.require(:agenda).permit(:list, :user_id)
    end
end