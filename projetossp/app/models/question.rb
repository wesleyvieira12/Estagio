class Question < ActiveRecord::Base
    # Injeção de funções de auditória
    audited
    is_impressionable
end
