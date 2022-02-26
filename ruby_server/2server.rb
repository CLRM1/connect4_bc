# Library that contains TCPServer
require 'socket'

answer = rand(0..100)
guess = nil
# Create a new instance of TCPServer on Port 9292
server = TCPServer.new(9292)

loop do
  # Wait for a Request
  # When a request comes in, save the connection to a variable
  puts 'Waiting for Request...'
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

  # Extract the guess parameter if the Request included a guess
  request_line = request_lines[0]
  if request_line.include? '?'
    path = request_line.split[1]
    params = path.split("guess=")
    guess = params[-1].to_i
  end

  # Generate the Response
  puts "Sending response."
  if guess < answer
    output = "<html>Your Guess of #{guess} was too low</html>"
  elsif guess > answer
    output = "<html>Your Guess of #{guess} was too high</html>"
  else
    output = "<html>Your Guess of #{guess} was Correct!</html>"
  end
  status = "http/1.1 200 ok"
  response = status + "\r\n" + "\r\n" + output

  # Send the Response
  connection.puts response

  # close the connection
  connection.close
end
