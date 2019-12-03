class CreateAgendas < ActiveRecord::Migration[6.0]
  def change
    create_table :agendas do |t|
      t.string :list
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
