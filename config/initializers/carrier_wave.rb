# For image uploader with carrierwave https://github.com/carrierwaveuploader/carrierwave
require 'carrierwave/orm/activerecord'

CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                   
  config.fog_credentials = {
    provider:              'AWS',                   
    aws_access_key_id:     'AKIAJ4MCHDLTVTSOCSBQ',                   
    aws_secret_access_key: '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',                   
  }
  config.fog_directory  = 'airbnb-like-pg'                     
end