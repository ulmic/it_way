class Event < ActiveRecord::Base
  mount_uploader :photo, EventPhotoUploader
end
