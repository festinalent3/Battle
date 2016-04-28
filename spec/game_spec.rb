require 'game'

describe Game do

  let(:slasher) {double :slasher}
  let(:mittens) {double :mittens}
  let(:winner) {double :winner, hp: 1}
  let(:looser) {double :looser, hp: 0}
  subject(:game) {described_class.new slasher, mittens}
  subject(:game_over) {described_class.new winner, looser}

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

  it 'knows when the game is over' do
    expect(game_over.game_over?).to eq true
  end

end
