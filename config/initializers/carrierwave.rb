CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider => 'AWS',                        # required
    :aws_access_key_id => ENV['HOTDOGS_AWS_ACCESS_KEY_ID'],                        # required
    :aws_secret_access_key => ENV['HOTDOGS_AWS_SECRET_ACCESS_KEY'],                        # required
    :region => 'eu-west-1'                # optional, defaults to 'us-east-1'
  }
  config.fog_directory = ENV['hotdogs-app']                          # required
  config.fog_public = true                                        # optional, defaults to true

end