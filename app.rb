# app.rb
require 'sinatra'
require 'sinatra/reloader'
set :bind, '::'

get '/*' do
  response = "VERSION_NAME: #{ENV['VERSION_NAME']  || 'nil'}"
  response += "<br /><br />"
  response += "headers: #{request.env.select { |k,v| k.start_with?('HTTP_') }.map { |k,v| [k.sub(/^HTTP_/, '').downcase, v] }.to_json}"
  response += "<br /><br />"
  response += "params: #{params.to_json}\n"

  puts response
  response
end