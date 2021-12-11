require 'httpclient'
require 'json'

client = HTTPClient.new
body = 'This is expected to be sent back as part of response body.'
uri = 'https://postman-echo.com/put'
response = client.put(uri, body)

result = JSON.parse(response.body)

puts result
