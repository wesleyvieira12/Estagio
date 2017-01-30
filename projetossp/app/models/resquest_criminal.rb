class ResquestCriminal < ActiveRecord::Base
  
  enum status: {aberto: 0, em_andamento:1, finalizado: 2} 
  
  # Injeção de funções de auditória
  audited
  is_impressionable
  
  # Relacionamentos
  belongs_to :user
  belongs_to :person
  belongs_to :resquest_type
  belongs_to :district_resquest, class_name: 'District', :foreign_key => 'district_resquest'
  belongs_to :district_send, class_name: 'District', :foreign_key => 'district_send'
  has_many :question_resquest_criminals
  has_many :questions, through: :question_resquest_criminals
end
