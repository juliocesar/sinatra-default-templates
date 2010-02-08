require File.join(File.dirname(__FILE__), 'dummy')
gem 'rspec', '>= 1.3.0';     require 'spec'
gem 'rack-test', '>= 0.5.3'; require 'rack/test'
require 'spec/interop/test'

set :environment, :test
set :run, :false
set :logging, false

def app
  @app ||= Sinatra::Application
end

describe 'a Sinatra app' do
  include Rack::Test::Methods
  it 'should render views/test.haml despite the absence of a get "/test" block if views/test.haml exists' do
    get '/test'
    last_response.body.should =~ /Buongiorno principessa!/
  end
end

