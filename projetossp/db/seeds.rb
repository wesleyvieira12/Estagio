# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Criando usuários"
user_administrador = User.create! email: 'administrador@email.com', password: '12345678', password_confirmation: '12345678'
user_delegado = User.create! email: 'delegado@email.com', password: '12345678', password_confirmation: '12345678'
user_perito = User.create! email: 'perito@email.com', password: '12345678', password_confirmation: '12345678'
user_agente = User.create! email: 'agente@email.com', password: '12345678', password_confirmation: '12345678'
puts 'email: josafa@email.com 
    senha: 12345678 
    email: delegado@email.com 
    senha: 12345678 
    email: perito@email.com 
    senha: 12345678 
    email: agente@email.com 
    senha: 12345678 '
    
puts 'Criando módulos'  
# Nome da classe ou modelo. 
# Ordem alfabetica
segment_district = Segment.create! name: 'district', description: 'Segmento ou nome dos módulos da aplicação: Distrito'
segment_group_permission = Segment.create! name: 'group_permission', description: 'Segmento ou nome dos módulos da aplicação: Permissão de Grupo'
segment_person = Segment.create! name: 'person', description: 'Segmento ou nome dos módulos da aplicação: Pessoa'
segment_permission = Segment.create! name: 'permission', description: 'Segmento ou nome dos módulos da aplicação: Permissão'
segment_segment = Segment.create! name: 'segment', description: 'Segmento ou nome dos módulos da aplicação: Módulo'
segment_user = Segment.create! name: 'user', description: 'Segmento ou nome dos módulos da aplicação: Usuário'
segment_user_group = Segment.create! name: 'user_group', description: 'Segmento ou nome dos módulos da aplicação: Grupo de Usuário'
segment_user_permission = Segment.create! name: 'user_permission', description: 'Segmento ou nome dos módulos da aplicação: Permissão de Usuário'


# Nome do método do controlador
puts 'Criando permissões'
permission_create = Permission.create! name: 'create', description: 'método create do controlador'
permission_destroy = Permission.create! name: 'destroy', description: 'método destroy do controlador'
permission_index = Permission.create! name: 'index', description: 'método index do controlador'
permission_show = Permission.create! name: 'show', description: 'método show do controlador'
permission_new = Permission.create! name: 'new', description: 'método new do controlador'
permission_update = Permission.create! name: 'update', description: 'método update do controlador'

# Criando grupo de usuário
puts 'Criando grupo de usuário'
# Administrador
user_group_administrador_level_0 = UserGroup.create! function: 3, level: 0
# Agente
user_group_agente_level_0 = UserGroup.create! function: 0, level: 0
user_group_agente_level_1 = UserGroup.create! function: 0, level: 1
user_group_agente_level_2 = UserGroup.create! function: 0, level: 2
# Delegado
user_group_delegado_level_0 = UserGroup.create! function: 2, level: 0
user_group_delegado_level_1 = UserGroup.create! function: 2, level: 1
user_group_delegado_level_2 = UserGroup.create! function: 2, level: 2
# Périto
user_group_perito_level_0 = UserGroup.create! function: 1, level: 0
user_group_perito_level_1 = UserGroup.create! function: 1, level: 1
user_group_perito_level_2 = UserGroup.create! function: 1, level: 2

# Permissão de grupo
puts 'Adicionando permissões de grupo'
# Grupo Administrador
# Módulo District
GroupPermission.create! user_group: user_group_administrador_level_0, segment: segment_district, permission: permission_create
GroupPermission.create! user_group: user_group_administrador_level_0, segment: segment_district, permission: permission_destroy
GroupPermission.create! user_group: user_group_administrador_level_0, segment: segment_district, permission: permission_index
GroupPermission.create! user_group: user_group_administrador_level_0, segment: segment_district, permission: permission_show
GroupPermission.create! user_group: user_group_administrador_level_0, segment: segment_district, permission: permission_new
GroupPermission.create! user_group: user_group_administrador_level_0, segment: segment_district, permission: permission_update
# Módulo GroupPermission
GroupPermission.create! user_group: user_group_administrador_level_0, segment: segment_group_permission, permission: permission_create
GroupPermission.create! user_group: user_group_administrador_level_0, segment: segment_group_permission, permission: permission_destroy
GroupPermission.create! user_group: user_group_administrador_level_0, segment: segment_group_permission, permission: permission_index
GroupPermission.create! user_group: user_group_administrador_level_0, segment: segment_group_permission, permission: permission_show
GroupPermission.create! user_group: user_group_administrador_level_0, segment: segment_group_permission, permission: permission_new
GroupPermission.create! user_group: user_group_administrador_level_0, segment: segment_group_permission, permission: permission_update
# Módulo Person
GroupPermission.create! user_group: user_group_administrador_level_0, segment: segment_person, permission: permission_create
GroupPermission.create! user_group: user_group_administrador_level_0, segment: segment_person, permission: permission_destroy
GroupPermission.create! user_group: user_group_administrador_level_0, segment: segment_person, permission: permission_index
GroupPermission.create! user_group: user_group_administrador_level_0, segment: segment_person, permission: permission_show
GroupPermission.create! user_group: user_group_administrador_level_0, segment: segment_person, permission: permission_new
GroupPermission.create! user_group: user_group_administrador_level_0, segment: segment_person, permission: permission_update
# Módulo Permission
GroupPermission.create! user_group: user_group_administrador_level_0, segment: segment_permission, permission: permission_create
GroupPermission.create! user_group: user_group_administrador_level_0, segment: segment_permission, permission: permission_destroy
GroupPermission.create! user_group: user_group_administrador_level_0, segment: segment_permission, permission: permission_index
GroupPermission.create! user_group: user_group_administrador_level_0, segment: segment_permission, permission: permission_show
GroupPermission.create! user_group: user_group_administrador_level_0, segment: segment_permission, permission: permission_new
GroupPermission.create! user_group: user_group_administrador_level_0, segment: segment_permission, permission: permission_update
# Módulo Segment 
GroupPermission.create! user_group: user_group_administrador_level_0, segment: segment_segment, permission: permission_create
GroupPermission.create! user_group: user_group_administrador_level_0, segment: segment_segment, permission: permission_destroy
GroupPermission.create! user_group: user_group_administrador_level_0, segment: segment_segment, permission: permission_index
GroupPermission.create! user_group: user_group_administrador_level_0, segment: segment_segment, permission: permission_show
GroupPermission.create! user_group: user_group_administrador_level_0, segment: segment_segment, permission: permission_new
GroupPermission.create! user_group: user_group_administrador_level_0, segment: segment_segment, permission: permission_update
# Módulo User
GroupPermission.create! user_group: user_group_administrador_level_0, segment: segment_user, permission: permission_create
GroupPermission.create! user_group: user_group_administrador_level_0, segment: segment_user, permission: permission_destroy
GroupPermission.create! user_group: user_group_administrador_level_0, segment: segment_user, permission: permission_index
GroupPermission.create! user_group: user_group_administrador_level_0, segment: segment_user, permission: permission_show
GroupPermission.create! user_group: user_group_administrador_level_0, segment: segment_user, permission: permission_new
GroupPermission.create! user_group: user_group_administrador_level_0, segment: segment_user, permission: permission_update
# Módulo UserGroup
GroupPermission.create! user_group: user_group_administrador_level_0, segment: segment_user_group, permission: permission_create
GroupPermission.create! user_group: user_group_administrador_level_0, segment: segment_user_group, permission: permission_destroy
GroupPermission.create! user_group: user_group_administrador_level_0, segment: segment_user_group, permission: permission_index
GroupPermission.create! user_group: user_group_administrador_level_0, segment: segment_user_group, permission: permission_show
GroupPermission.create! user_group: user_group_administrador_level_0, segment: segment_user_group, permission: permission_new
GroupPermission.create! user_group: user_group_administrador_level_0, segment: segment_user_group, permission: permission_update
# Módulo UserPermission
GroupPermission.create! user_group: user_group_administrador_level_0, segment: segment_user_permission, permission: permission_create
GroupPermission.create! user_group: user_group_administrador_level_0, segment: segment_user_permission, permission: permission_destroy
GroupPermission.create! user_group: user_group_administrador_level_0, segment: segment_user_permission, permission: permission_index
GroupPermission.create! user_group: user_group_administrador_level_0, segment: segment_user_permission, permission: permission_show
GroupPermission.create! user_group: user_group_administrador_level_0, segment: segment_user_permission, permission: permission_new
GroupPermission.create! user_group: user_group_administrador_level_0, segment: segment_user_permission, permission: permission_update

# Permissão de grupo
# Agente 
# Observação: Apenas agente level 0
# Módulo Person
GroupPermission.create! user_group: user_group_agente_level_0, segment: segment_person, permission: permission_index
GroupPermission.create! user_group: user_group_agente_level_0, segment: segment_person, permission: permission_show
GroupPermission.create! user_group: user_group_agente_level_0, segment: segment_person, permission: permission_new

# Permissão de grupo
# Delegado
# Observação: Apenas delegado level 0
GroupPermission.create! user_group: user_group_delegado_level_0, segment: segment_person, permission: permission_create
GroupPermission.create! user_group: user_group_delegado_level_0, segment: segment_person, permission: permission_destroy
GroupPermission.create! user_group: user_group_delegado_level_0, segment: segment_person, permission: permission_index
GroupPermission.create! user_group: user_group_delegado_level_0, segment: segment_person, permission: permission_show
GroupPermission.create! user_group: user_group_delegado_level_0, segment: segment_person, permission: permission_new
GroupPermission.create! user_group: user_group_delegado_level_0, segment: segment_person, permission: permission_update

# Permissão de grupo
# Périto
# Observação: Apenas périto level 0
GroupPermission.create! user_group: user_group_perito_level_0, segment: segment_person, permission: permission_create
GroupPermission.create! user_group: user_group_perito_level_0, segment: segment_person, permission: permission_index
GroupPermission.create! user_group: user_group_perito_level_0, segment: segment_person, permission: permission_show
GroupPermission.create! user_group: user_group_perito_level_0, segment: segment_person, permission: permission_new
GroupPermission.create! user_group: user_group_perito_level_0, segment: segment_person, permission: permission_update

# Adicionando usuário a um grupo
puts 'Adicionando usuário a um grupo'
# User Administrador
user_administrador.user_group = user_group_administrador_level_0
user_administrador.save

# User Agente
user_agente.user_group = user_group_agente_level_0
user_agente.save

# User Delegado
user_delegado.user_group = user_group_delegado_level_0
user_delegado.save

# User Périto
user_perito.user_group = user_group_perito_level_0
user_perito.save