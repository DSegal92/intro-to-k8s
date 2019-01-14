require 'sinatra'
require 'redis'

redis = Redis.new(host: ENV['REDIS_HOST'])

get '/hello' do
  "Hello #{ENV['NAME']}"
end

get '/set/:key/:value' do |key, value|
  redis.set(key, value)
  "Setting key #{key}: #{value}"
end

get '/get/:key' do |key|
  "#{key} is #{redis.get(key) || 'Undefined'}"
end

get '/secret' do
  "The secret is: #{ENV['MY_SECRET']}"
end
