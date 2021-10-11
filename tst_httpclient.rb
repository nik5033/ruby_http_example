require 'httpclient'
require 'json'

client = HTTPClient.new
response = client.request(:put, 'https://postman-echo.com/put')
result = JSON.parse(response.body)

puts result
