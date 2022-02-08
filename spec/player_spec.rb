require 'rspec'
require './lib/game'
require './lib/player'

describe Player do
  describe 'add_piece' do
    it 'places a piece in the given row' do
      user_player = Player.new
      comp_player = Player.new
      game = Game.new
      game.start
      game.add_piece('A')
      expect(game.board).to eq(['ABCDEFG', '.......', '.......', '.......', '.......', '.......', 'X......'])
    end
  end
end
