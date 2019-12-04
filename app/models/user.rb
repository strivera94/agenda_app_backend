class User < ApplicationRecord
    has_many :agendas
    has_many :tasks, through: :agendas

    validates_uniqueness_of :username, :case_sensitive => false
end
