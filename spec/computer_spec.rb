require 'rspec'
require './lib/player'
require './lib/board'
require './lib/space'
require './lib/computer'

describe Computer do
  it "exists" do
    board = Board.new
    computer = Computer.new(board)
    expect(computer).to be_an_instance_of(Computer)
  end

  it "has attributes" do
    board = Board.new
    computer = Computer.new(board)
    expect(computer.has_won).to be(false)
  end

end
