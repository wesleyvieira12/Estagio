class Person < ActiveRecord::Base
    
    # Montador de imagem
    mount_uploader :photo, ImageUploader
    
    # Injeção de funções de auditória
    audited
    
    # Validates
    validates :name, presence: true
end
