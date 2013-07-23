class Notice < ActiveRecord::Base
  attr_accessible :description, :headline, :image
  mount_uploader :image, ImageUploader
end
