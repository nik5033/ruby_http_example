require 'socket'

server = TCPServer.new 5678

while session = server.accept
   request = session.gets
   puts request

   first_http = request.split # 1 - method, 2 - path, 3-HTTP

   session.print "HTTP/1.1 200\r\n"
   session.print "Content-Type: text/html\r\n"
   session.print "\r\n"

   case first_http[1]
   when '/time'
    session.print "Hello world! The time is #{Time.now}"
   when '/hello'
    session.print "hello"
   else
    session.print "Error"
   end

   session.close
end
