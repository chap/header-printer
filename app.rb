require "sinatra"
require "pp"

get '/*' do
  puts request.env.to_s
  return "<pre>#{pp request.env}</pre>"
end

post '/*' do
  puts request.env.to_s
  return request.env.to_s
end
