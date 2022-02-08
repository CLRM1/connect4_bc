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
      expect(game.board).to eq(['ABCDEFG', '.......', '.......', '.......', '.......', '.......', '.......'])
    end
  end

  describe '# Start' do
    it 'can print a welcome message' do
      game = Game.new
      expect(game.board).to eq(['ABCDEFG', '.......', '.......', '.......', '.......', '.......', '.......'])
      game.start
    end
  end

end
