class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :agendas

  def agendas
    self.object.agendas.map do |agenda|
      {
        id: agenda.id,
        list: agenda.list,
        tasks: agenda.tasks
      }
    end
  end
end
