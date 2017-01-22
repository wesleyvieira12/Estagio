class User < ActiveRecord::Base
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  # Injeção de funções de auditória
  audited
  
  # Relacionamentos
  belongs_to :user_group
  has_many :user_permissions
  
  # Função de verificação de permissão dentro do módulo
  # da aplicação
  # Exemplo:
  # =>  segment = :person
  # =>  permission = :create
  
  def permission_segment? segment, permission
    segment = Segment.where name: segment
    permission = Permission.where name: permission
    unless user_group.group_permissions.where(segment: segment, permission: permission).empty?
      return true
    end
    
    unless user_permissions.where(segment: segment, permission: permission).empty? 
      return true
    end  
    
    return false
  end
  
end
