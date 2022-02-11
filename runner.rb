require './lib/board'
require './lib/player'
require './lib/space'
require './lib/computer'
require 'pry'


board = Board.new

board.print_welcome

board.print_board

player1 = Player.new(board)

computer = Computer.new(board)

turn_counter = 0

until player1.has_won? || computer.has_won? do 

  player1.add_piece(gets.chomp)
  computer.add_piece

  turn_counter += 1
  puts " "
  puts "Round:#{turn_counter}"
  puts " "
  board.print_board

end
