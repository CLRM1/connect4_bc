require 'pry'
require './lib/board'
require './lib/player'

class Space
  attr_accessor :is_empty, :symbol
  def initialize
    @is_empty = true
    @symbol = '.'
  end

  def is_empty?
    return @is_empty
  end
end
