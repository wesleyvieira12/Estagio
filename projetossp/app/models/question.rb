class Question < ActiveRecord::Base
    
    enum resquest_type: [ :cadaverico, :arma, :corpo_de_delito ]
    
    # Injeção de funções de auditória
    audited
    is_impressionable
    
end
