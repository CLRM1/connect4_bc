require 'rspec'
require './lib/game.rb'
require 'pry'

describe Game do

  describe '# Initialize' do
    it "exists" do
      game = Game.new
      expect(game).to be_an_instance_of(Game)
    end
    it "contains an empty game board" do
      game = Game.new
      expect(game.board[0]).to eq(['A', 'B', 'C', 'D', 'E', 'F', 'G'])
    end
  end

  describe '# Start' do
    it 'prints an empty game board' do
      game = Game.new
      expect(game.start).to eq(game.board)
    end
  end

end
