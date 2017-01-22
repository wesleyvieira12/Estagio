class Permission < ActiveRecord::Base
    
    # Entidade responsável por guarda informação
    # de nome da funções dos controladores
    # Exemplo:
    # =>    PeopleController = Controlador com método index
    # =>    Permission.new name: 'index', description: 'função index do controlador'
    
    # Injeção de funções de auditória
    audited
    
    # Relacionamentos
    has_many :group_permissions
end
