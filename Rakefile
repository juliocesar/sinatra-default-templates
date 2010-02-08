require 'rubygems'
require 'rake'
 
begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "sinatra-default-templates"
    gem.summary = "Render a template in the absence of a route if one exists"
    gem.description = "Saves you from having to write routes just to render templates with the same name. Rails-style."
    gem.email = 'julio.ody@gmail.com'
    gem.homepage = 'http://github.com/juliocesar/sinatra-default-templates'
    gem.authors = ['Julio Cesar']
    gem.add_dependency 'sinatra', '>= 1.0.a'
    gem.add_development_dependency 'rspec', '>= 1.3.0'
    gem.add_development_dependency 'rack-test', '>= 0.5.3'
    gem.add_development_dependency 'haml', '2.2.17'
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts 'Jeweler (or a dependency) not available. Install it with: gem install jeweler'
end