# Create Logger
log_file_path = File.expand_path('../../../log/development.log', __FILE__)
LOGGER = Logger.new(log_file_path, File::WRONLY | File::APPEND | File::CREAT)

