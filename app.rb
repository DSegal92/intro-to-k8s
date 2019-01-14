require 'sinatra'
require 'redis'

redis = Redis.new

get '/hello' do
  "Hello World"
end

get '/set/:key/:value' do |key, value|
  redis.set(key, value)
  "Setting key #{key}: #{value}"
end

get '/get/:key' do |key|
  "#{key} is #{redis.get(key) || 'Undefined'}"
end
