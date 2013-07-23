# encoding: utf-8

class AvatarUploader < CarrierWave::Uploader::Base
  storage :file

  def store_dir
     'public/images'
  end
  
  def extension_white_list
    %w(jpg jpeg gif png)
  end

  
end
