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
      expect(game.board[:row0]).to eq(['A', 'B', 'C', 'D', 'E', 'F', 'G'])
    end
  end

  describe '# Start' do
    it 'prints an empty game board' do
      game = Game.new
      row1_syms = []
      row2_syms = []
      row3_syms = []
      row4_syms = []
      row5_syms = []
      row6_syms = []
      game.board[:row1].each do |space|
        row1_syms << space.symbol
      end
      game.board[:row2].each do |space|
        row2_syms << space.symbol
      end
      game.board[:row3].each do |space|
        row3_syms << space.symbol
      end
      game.board[:row4].each do |space|
        row4_syms << space.symbol
      end
      game.board[:row5].each do |space|
        row5_syms << space.symbol
      end
      game.board[:row5].each do |space|
        row6_syms << space.symbol
      end
      expect(row1_syms).to eq(['.', '.', '.', '.', '.', '.', '.'])
      expect(row2_syms).to eq(['.', '.', '.', '.', '.', '.', '.'])
      expect(row3_syms).to eq(['.', '.', '.', '.', '.', '.', '.'])
      expect(row4_syms).to eq(['.', '.', '.', '.', '.', '.', '.'])
      expect(row5_syms).to eq(['.', '.', '.', '.', '.', '.', '.'])
      expect(row6_syms).to eq(['.', '.', '.', '.', '.', '.', '.'])
    end
  end

end
