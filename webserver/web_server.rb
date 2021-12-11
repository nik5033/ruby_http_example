require 'socket'
require 'cgi'

server = TCPServer.new 5678

while session = server.accept
   request = session.gets

   first_http = request.split # 1 - method, 2 - path, 3-HTTP
   
   session.print "HTTP/1.1 200\r\n"
   session.print "Content-Type: text/html\r\n"
   session.print "\r\n"

   case first_http[1]
   when '/time'
      session.print "Hello world! The time is #{Time.now}"
   when '/hello'
      session.print "hello"
   when /\/sum\?*/
      /[?](?<param>.*)/ =~ first_http[1]
      params = CGI::parse(param)
      session.print params["a"][0].to_i + params["b"][0].to_i
   else
    session.print "Error"
   end

   session.close
end
