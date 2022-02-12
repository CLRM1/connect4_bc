# Library that contains TCPServer

require 'socket'

# Create a new instance of class TCPServer on Port 9292

server = TCPServer.new(9292)

# Wait for a Request
# When a request comes in, save the connection to a variable
puts 'Waiting for Request'
connection = server.accept

# Read the request line by line until we have read every line
puts "Got this Request:"
request_lines = []
line = connection.gets.chomp
while !line.empty?
  request_lines << line
  line = connection.gets.chomp
end

# Print out the Request
puts request_lines

# Generate the Response
puts "Sending response."
output = "<html>Hello from the Server side!</html>"
output = "<html>#{send_file(/lib/runner)}</html>"
status = "http/1.1 200 ok"
response = status + "\r\n" + "\r\n" + output

# Send the Response
connection.puts response

# close the connection
connection.close
