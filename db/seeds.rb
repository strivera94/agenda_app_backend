# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



user1 = User.create(username:"Pastel")
user2 = User.create(username:"Billbo")

agenda1 = Agenda.create(list: "Daily Tasks", user_id: user1.id)
agenda2 = Agenda.create(list:"Work Stuff", user_id: user1.id)

task1 = Task.create(task:"Thing I'm going to do today", heading:"My Task", agenda_id: agenda1.id)
task2 = Task.create(task:"Papers", heading: "Get those papers done")
task3 = Task.create(task:"Fax", heading: "Get those faxes faxed")