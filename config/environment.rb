# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
PraxisWeb::Application.initialize!
#config.action_mailer.default_url_options = { :host => 'localhost:3000' }

Encoding.default_external = Encoding::UTF_8
Encoding.default_internal = Encoding::UTF_8