class AvatarUploader < CarrierWave::Uploader::Base

  storage :file
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mouted_as}/#{model.id}"
  end
 
end
