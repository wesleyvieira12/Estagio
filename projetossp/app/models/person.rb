class Person < ActiveRecord::Base
    mount_uploader :photo, ImageUploader
end
