gem 'sinatra',  '>= 1.0.a';  require 'sinatra'
gem 'haml',     '>= 2.2.17'; require 'haml'

require File.join(File.dirname(__FILE__), *%w(.. lib sinatra default_templates))

# if views/test.haml exists, it'll get rendered
# regardless if there's an associated block or not
