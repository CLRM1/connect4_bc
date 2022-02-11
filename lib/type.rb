require_relative 'game'
require_relative 'player'
require_relative 'space'
require_relative 'computer'
require 'pry'

game = Game.new

player1 = Player.new(game)

computer = Computer.new(game)

def type(human, computer)

  if human
    :human
  else
    :computer
  end


end

type(player1, computer)
