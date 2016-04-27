require 'player'

describe Player do
subject(:lexi) { Player.new('Lexi') }
subject(:emma) { Player.new('Emma') }

  it 'returns its name' do
    expect(lexi.name).to eq 'Lexi'
  end

  it 'attack the other player' do
    expect(emma).to receive(:reduce_hp)
    lexi.attack(emma)
  end

  it 'reduces the HP after attack' do
    lexi.reduce_hp
    expect(lexi.hp).to eq 90
  end

end
