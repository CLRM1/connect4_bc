require './lib/board'
require './lib/player'
require './lib/space'
require './lib/computer'
require 'pry'

game_count = 0
answer = "p or q"
while game_count >= 0
  board = Board.new

  player1 = Player.new(board)

  computer = Computer.new(board)

  turn_counter = 0
  puts "Welcome to Connect 4!"
  puts " "
  answer = board.menu
  if answer.upcase == 'P'
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

    5.times do
      puts " "
    end
    game_count += 1
  elsif answer.upcase == 'Q'
    puts "See you later!"
    break
  end

end
