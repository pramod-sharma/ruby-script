aws_config_path = File.expand_path('../../aws.yml', __FILE__)
aws_config = YAML.load(File.open(aws_config_path))

ACCESS_KEY_ID     = ENV['AWS_ACCESS_KEY_ID']     || aws_config['access_key_id']  
SECRET_ACCESS_KEY = ENV['AWS_SECRET_ACCESS_KEY'] || aws_config['secret_access_key']

Aws.config.update({
  region: 'xxxxxxxxx',
  credentials: Aws::Credentials.new(ACCESS_KEY_ID, SECRET_ACCESS_KEY)
})
