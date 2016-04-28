require 'game'

describe Game do

  let(:slasher) {double :slasher}
  let(:mittens) {double :mittens}
  subject(:game) {described_class.new slasher, mittens}


  it "initalizes with two fighter instances" do
      expect(game.player_1).to eq slasher
      expect(game.player_2).to eq mittens
  end


  it "takes damage" do
    expect(mittens).to receive(:receive_damage)
    game.attack(mittens)
  end

  it 'switches turn' do
    game.switch_turn
    expect(game.current_player).to eq mittens
    expect(game.opponent).to eq slasher

  end

end
