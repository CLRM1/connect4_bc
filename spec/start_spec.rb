require 'rspec'
require './lib/game.rb'

describe Game do
  describe 'Start' do
    it '# can print a welcome message' do
      game = Game.new
      expect(game.start).to eq("Welcome to connect 4!")
    end
  end
end
