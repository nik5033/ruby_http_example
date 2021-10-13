require 'sinatra'

set :bind, '0.0.0.0'
set :port, 5679

get '/hello' do
  'hello'
end

get '/time' do
    "Hello world! The time is #{Time.now}"
end

get '/sum' do
    #puts (params['a'].to_i + params['b'].to_i).to_s
    (params['a'].to_i + params['b'].to_i).to_s
end
