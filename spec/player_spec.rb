require 'rspec'
require './lib/game'
require './lib/player'

describe Player do
  describe 'add_piece' do
    it 'places a piece in the given row' do
      user_player = Player.new
      comp_player = Player.new
      user_player.game.start
      user_player.add_piece('A')
      expect(user_player.game.board).to eq([["A", "B", "C", "D", "E", "F", "G"], [".", ".", ".", ".", ".", ".", "."], [".", ".", ".", ".", ".", ".", "."], [".", ".", ".", ".", ".", ".", "." ], [".", ".", ".", ".", ".", ".", "."], [".", ".", ".", ".", ".", ".", "."], ["X", ".", ".", ".", ".", ".", "."]])
    end
  end
end
