require 'sinatra'

set :bind, '0.0.0.0'
set :port, 5678

get '/hello' do
  'hello'
end

get '/time' do
    "Hello world! The time is #{Time.now}"
end

get '/sum' do
    params = request.env['rack.request.query_hash']
    puts params['a'].to_i + params['b'].to_i
end
