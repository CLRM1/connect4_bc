require 'rspec'
require './lib/game'

describe Player do
  describe 'add_piece' do
    it 'places a piece in the given row' do
      game = Game.new
      user_player = Player.new
      comp_player = PLayer.new
      game.start(user_player, comp_player)
      user_player.add_piece('A')
      expect(game.board).to eq(['ABCDEFG', '.......', '.......', '.......', '.......', '.......', '.......'])
    end
  end
end
