class Question < ActiveRecord::Base
    # Injeção de funções de auditória
    audited
end
