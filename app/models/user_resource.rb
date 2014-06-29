class UserResource < ActiveRecord::Base
  belongs_to :user
  
  mount_uploader :media,  MediaUploader
end
