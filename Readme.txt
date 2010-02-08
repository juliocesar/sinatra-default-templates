# sinatra-default-templates

To avoid repetitive routes like

get '/foo' do
  haml :foo
end

get '/bar' do
  haml :bar
end

if you have the templates in place (views/foo.haml, views/bar.haml in the above case), they'll get
rendered automagically.

# How to use

Because of a bug in Sinatra 0.9.4, extensions cannot set routes, or for that matter, define
not_found or error blocks. And since I decided to turn this into one, you'll have to use 
Sinatra 1.0.a (or above). In which case, simply:

require 'sinatra'
require 'sinatra/default_templates'

And you're set.

# Specs

Just run

$ spec spec/default_templates_spec.rb

Presumes rspec 1.3.0 is installed.