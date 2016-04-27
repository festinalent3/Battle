require 'game'

describe Game do
subject(:game) { described_class.new }
let(:other_player) { double(:other_player, reduce_hp: true) }

 it 'attack the other player' do
   expect(other_player).to receive(:reduce_hp)
   game.attack(other_player)
  end

end
