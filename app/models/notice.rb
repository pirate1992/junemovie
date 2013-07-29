class Notice < ActiveRecord::Base
  has_many :characters
  mount_uploader :image, ImageUploader
  mount_uploader :video, VideoUploader
end
