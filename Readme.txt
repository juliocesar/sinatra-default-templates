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