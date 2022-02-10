require './lib/game'
require './lib/player'
require './lib/space'
require './lib/computer'
require 'pry'


game = Game.new

game.print_welcome

game.print_board

player1 = Player.new(game)

computer = Computer.new(game)

turn_counter = 0

until player1.has_won? do

  player1.add_piece(gets.chomp)
  computer.add_piece

  turn_counter += 1
  puts " "
  puts "Round:#{turn_counter}"
  puts " "
  game.print_board

end
