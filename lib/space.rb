require 'pry'
require './lib/game'
require './lib/player'

class Space
  attr_accessor :is_empty, :coords
  def initialize(coords)
    @is_empty = true
    @coords = coords
  end

  def is_empty?
    return @is_empty
  end

  def symbol
    if @is_empty == true
      return '.'
    end
  end
end
