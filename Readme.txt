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

# Specs

Just run

$ spec spec/default_templates_spec.rb

Presumes rspec 1.3.0 is installed.