require 'rspec'
require './lib/game.rb'

describe Game do

  describe 'Initialize' do
    it "exists" do
      game = Game.new
      expect(game).to be_an_instance_of(Game)
    end

  end

  describe 'Start' do
    it '# can print a welcome message' do
      game = Game.new
      expect(game.start).to eq("Welcome to connect 4!")
    end
  end


end
