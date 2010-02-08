require 'sinatra/base'

module Sinatra
  module DefaultTemplates
    
    module Helpers
      def render_template_if_exists!
        name = File.basename(request.path)
        Dir["#{options.views}/#{name}.*"].each do |match|
          @_format = File.extname(match).sub(/^./, '')
          @_template = File.basename(match, File.extname(match))
        end
        eval("#{@_format} :#{@_template}") if @_format and @_template
      end          
    end
    
    def self.registered(app)
      app.helpers DefaultTemplates::Helpers
      
      app.not_found do
        render_template_if_exists!
      end
    end
  end
  register Sinatra::DefaultTemplates
end
