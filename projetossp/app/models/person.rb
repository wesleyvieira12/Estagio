class Person < ActiveRecord::Base
    mount_uploader :photo, ImageUploader
    audited
    
    # validates
    validates :name, presence: true
end
