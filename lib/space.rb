require 'pry'
require './lib/board'
require './lib/player'

class Space
  attr_accessor :is_empty, :coords, :symbol
  def initialize(coords)
    @is_empty = true
    @coords = coords
    @symbol = '.'
  end

  def is_empty?
    return @is_empty
  end

  # def symbol
  #   if is_empty?
  #     return '.'
  #   else
  #     return 'X'
  #   end
  # end
end
