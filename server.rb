# Library that contains TCPServer
# require './runner'
require 'socket'
require './lib/board'
require './lib/player'
require './lib/space'
require './lib/computer'
require './lib/win_checker'

answer = rand(0..100)
guess = nil
# Create a new instance of class TCPServer on Port 9292

server = TCPServer.new(9292)

loop do
  # Wait for a Request
  # When a request comes in, save the connection to a variable
  puts 'Waiting for Request'
  connection = server.accept


#experiment1 with runner file
  # Generate the Response
  puts "Sending response."
  connect4_game = "<html>
    #{
    game_count = 0
    answer = "p or q"
    while game_count >= 0
      board = Board.new

      player1 = Player.new(board)

      computer = Computer.new(board)

      win_checker = WinChecker.new(board, player1, computer)

      turn_counter = 0
      puts "Welcome to Connect 4!"
      puts " "
      answer = board.menu
      if answer.upcase == 'P'
        puts " "
        puts "Choose a column (ABCDEFG)"
        board.print_board
        until player1.has_won? || computer.has_won? || win_checker.is_a_draw? do

          player1.add_piece(gets.chomp)
          computer.add_piece

          turn_counter += 1
          puts " "
          puts "Round:#{turn_counter}"
          puts " "
          board.print_board
          win_checker.check_diagonal_wins
          win_checker.check_vertical_wins
          win_checker.check_horizontal_wins
        end

        5.times do
          puts " "
        end
        game_count += 1
      elsif answer.upcase == 'Q'
        puts "See you later!"
        break
      end

    end
  }
  </html>"
  status = "http/1.1 200 ok"
  response = status + "\r\n" + "\r\n" + connect4_game
#---end experiment1

# Read the request line by line until we have read every line
puts "Got this Request:"
request_lines = []
request_lines << connect4_game 
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

  # Send the Response
  connection.puts response

  # close the connection
  connection.close
end
