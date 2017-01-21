# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Criando usuários"
User.create! email: 'josafa@email.com', password: '12345678', password_confirmation: '12345678'
User.create! email: 'delegado@email.com', password: '12345678', password_confirmation: '12345678'
User.create! email: 'perito@email.com', password: '12345678', password_confirmation: '12345678'
User.create! email: 'agente@email.com', password: '12345678', password_confirmation: '12345678'
puts 'email: josafa@email.com \n
    senha: 12345678 \n
    email: delegado@email.com \n
    senha: 12345678 \n
    email: perito@email.com \n
    senha: 12345678 \n
    email: agente@email.com \n
    senha: 12345678 \n'
    
puts 'Criando módulos'  
# Nome da classe ou modelo. 
# Ordem alfabetica 
Segment.create! name: 'group_permission', description: 'Segmento ou nome dos módulos da aplicação: Permissão de Grupo'
Segment.create! name: 'person', description: 'Segmento ou nome dos módulos da aplicação: Pessoa'
Segment.create! name: 'permission', description: 'Segmento ou nome dos módulos da aplicação: Permissão'
Segment.create! name: 'segment', description: 'Segmento ou nome dos módulos da aplicação: Módulo'
Segment.create! name: 'user', description: 'Segmento ou nome dos módulos da aplicação: Usuário'
Segment.create! name: 'user_group', description: 'Segmento ou nome dos módulos da aplicação: Grupo de Usuário'
Segment.create! name: 'user_permission', description: 'Segmento ou nome dos módulos da aplicação: Permissão de Usuário'


# Nome do método do controlador
puts 'Criando permissão'
Permission.create! name: 'create', description: 'método create do controlador'
Permission.create! name: 'destroy', description: 'método destroy do controlador'
Permission.create! name: 'index', description: 'método index do controlador'
Permission.create! name: 'new', description: 'método new do controlador'
Permission.create! name: 'update', description: 'método update do controlador'






