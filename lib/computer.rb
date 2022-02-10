require './lib/game'
require './lib/deck'
require './lib/space'

class Computer
  attr_accessor :has_won
  def initialize
    @has_won = false
  end

  def has_won?
    return @has_won
  end

  def add_card
  end
end
