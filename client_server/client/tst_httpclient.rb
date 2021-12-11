require 'httpclient'
require 'json'

client = HTTPClient.new
query = { 'a' => '3', 'b' => '7' }
uri = 'http://server:5679/sum'

begin
    response = client.get(uri, query)

    result = JSON.parse(response.body)

    puts result
rescue 
    retry
end
