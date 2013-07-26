# encoding: utf-8

class ImageUploader < CarrierWave::Uploader::Base


  storage :file
  
  def store_dir
    "public/images"
  end
end
