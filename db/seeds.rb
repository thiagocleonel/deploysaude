# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

CollaboratorCategory.create(name: "Medico")
CollaboratorCategory.create(name: "Agente de saúde")
CollaboratorCategory.create(name: "Atendente")
####################################################################################
puts 'Cadastrando Usuario padrao'
User.create!(name:"Admin", 
email: "admin@mail.com",
password: "123456",
password_confirmation: "123456",
role: 0	)

puts 'Cadastro Realizado'