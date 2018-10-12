require "sinatra"

get '/*' do
  puts headers.to_s
  return headers.to_s
end

post '/*' do
  puts headers.to_s
  return headers.to_s
end
