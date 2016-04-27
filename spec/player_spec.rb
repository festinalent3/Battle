require 'player'

describe Player do
subject(:player) { Player.new('Lexi') }

  it 'returns its name' do
    expect(player.name).to eq 'Lexi'
  end

end
