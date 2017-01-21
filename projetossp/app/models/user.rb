class User < ActiveRecord::Base
  
  belongs_to :user_group
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  # Injeção de funções de auditória
  audited
end
