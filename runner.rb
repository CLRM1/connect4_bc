require './lib/board'
require './lib/player'
require './lib/space'
require './lib/computer'
require 'pry'

board = Board.new

player1 = Player.new(board)

computer = Computer.new(board)

turn_counter = 0
puts "Welcome to Connect 4!"
puts " "
if board.menu == 'p'
  puts " "
  puts "Choose a column (ABCDEFG)"
  board.print_board
  until player1.has_won? || computer.has_won? do

    player1.add_piece(gets.chomp)
    computer.add_piece

    turn_counter += 1
    puts " "
    puts "Round:#{turn_counter}"
    puts " "
    board.print_board
  end

  player1.has_won = false
  puts "Welcome to Connect 4!"
  puts " "
  board.menu
  board.print_board

  until player1.has_won? || computer.has_won? do

    player1.add_piece(gets.chomp)
    computer.add_piece

    turn_counter += 1
    puts " "
    puts "Round:#{turn_counter}"
    puts " "
    board.print_board
  end

  5.times do
    puts " "
  end
  puts "See you later!"

end
