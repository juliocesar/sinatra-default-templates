gem 'sinatra',  '0.9.4';  require 'sinatra'
gem 'haml',     '2.2.17'; require 'haml'

require File.join(File.dirname(__FILE__), *%w(.. lib default_templates))
include DefaultTemplates

# if views/test.haml exists, it'll get rendered
# regardless if there's an associated block or not

not_found do
  render_template_if_exists!
end