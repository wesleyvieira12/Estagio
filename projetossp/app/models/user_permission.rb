class UserPermission < ActiveRecord::Base
  
  # Classe responsável por fazer a permissão personalizavél
  # Examplo:
  # =>  User: 'josafa@email.com'
  # =>  Segment: 'person'
  # =>  Permission: 'index'
  
  belongs_to :user
  belongs_to :segment
  belongs_to :permission
end
