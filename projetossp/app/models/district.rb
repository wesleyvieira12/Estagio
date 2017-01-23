class District < ActiveRecord::Base
    
    # Injeção de funções de auditória
    audited
    
    # Relacionamentos
    belongs_to :district
    has_many :districts
    
    # Distritos superiores
    def fathers_districts
        fathers_districts  = Array.new
        current_district = self
        while current_district
            fathers_districts << current_district
            current_district = current_district.district
        end
        
        return fathers_districts.reverse
    end
    
    # Distritos subordinados 
    def get_ancestors result = Array.new
        result << self
        unless self.districts.empty?
            self.districts.each do |district|
              district.get_ancestors(result)
            end
        end
        return result
    end
end
