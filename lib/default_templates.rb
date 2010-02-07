module DefaultTemplates
 
def render_template_if_exists!
  name = File.basename(request.path)
  Dir["#{Sinatra::Application.root}/views/#{name}.*"].each do |match|
    @_format = File.extname(match).sub(/^./, '')
    @_template = File.basename(match, File.extname(match))
  end
  eval("#{@_format} :#{@_template}") if @_format and @_template
end

end