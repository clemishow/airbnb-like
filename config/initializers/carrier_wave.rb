# For image uploader with carrierwave https://github.com/carrierwaveuploader/carrierwave
require 'carrierwave/orm/activerecord'

CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                   
  config.fog_credentials = {
    provider:              '',                   
    aws_access_key_id:     '',                   
    aws_secret_access_key: '',
    region:                ''
  }
  config.fog_directory  = 'airbnb-like-pg'
end
