class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  # On inclu l'utilisation Cloudinary avec la gem CarrierWave
end
