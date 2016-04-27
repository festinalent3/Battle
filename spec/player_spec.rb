require 'player'

describe Player do
subject(:lexi) { described_class.new('Lexi') }
subject(:emma) { described_class.new('Emma') }

  it 'returns its name' do
    expect(lexi.name).to eq 'Lexi'
  end

  it 'reduces the HP after attack' do
    lexi.reduce_hp
    expect(lexi.hp).to eq 90
  end

end
