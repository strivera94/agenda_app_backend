class User < ApplicationRecord
    has_many :agendas
    has_many :tasks, through: :agendas
end
