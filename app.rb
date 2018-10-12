require "sinatra"

get '/*' do
  puts request.env.to_s
  return request.env.to_s
end

post '/*' do
  puts request.env.to_s
  return request.env.to_s
end
