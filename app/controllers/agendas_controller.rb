class AgendasController < ApplicationController
    def index
        agendas = Agenda.all
        render json: agendas, includes: :tasks
    end

    def show
        agenda = User.find(params[:id])
        render json: agenda
    end

    def create
        agenda = Agenda.create(agenda_params)
        render json: agenda
    end

    def destroy
        agenda = Agenda.find(params[:id])
        agenda.destroy()
    end

    private

    def agenda_params
        params.require(:agenda).permit(:list, :user_id)
    end
end