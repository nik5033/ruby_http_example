require 'httpclient'
require 'json'

client = HTTPClient.new
query = { 'a' => '3', 'b' => '7' }
uri = 'http:/kubernetes.docker.internal:5679/sum'

begin
    response = client.get(uri, query)

    result = JSON.parse(response.body)

    puts result
rescue 
    puts "Retry to connect!"
    retry
end
