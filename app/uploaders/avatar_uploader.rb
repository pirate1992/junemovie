class AvatarUploader < CarrierWave::Uploader::Base
  #include Carrierwave::RMagick
  
  storage :file
  def store_dir
    #{}"uploads/#{model.class.to_s.underscore}/#{mouted_as}/#{model.id}"
    "public/images"
  end
  
 
end
