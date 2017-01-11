class Person < ActiveRecord::Base
    mount_uploader :photo, ImageUploader
    audited
end
