class ImageReport < ActiveRecord::Base
	mount_uploader :avatar, AvatarUploader
end
