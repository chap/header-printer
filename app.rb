require "sinatra"

get '/*' do
  out = request.env
  # try and limit to HTTP headers
  out = out.delete_if {|k,v| k != k.upcase }
  puts out
  return out.to_s
end

post '/*' do
  puts request.env.to_s
  return request.env.to_s
end
