# config/initializers/carrierwave.rb

CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     ENV["S3_KEY"],        # required
    aws_secret_access_key: ENV["S3_SECRET"],        # required
  }
  config.fog_directory  = ENV["S3_BUCKET"]              # required
end
