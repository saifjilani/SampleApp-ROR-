if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Configuration for Amazon S3
      :provider              => 'AWS',
      :aws_access_key_id     => ENV['S3_ACCESS_KEY'],
      :aws_secret_access_key => ENV['S3_SECRET_KEY'], 
      :path_style => true
    }
    config.fog_directory     =  ENV['S3_BUCKET']
    config.asset_host     = 'https://enigmatic-mesa-92204.herokuapp.com'
  end
end