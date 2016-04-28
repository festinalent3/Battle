require 'fighter'

describe Fighter do
  subject(:slasher){ described_class.new "slasher"}
  subject(:mittens){ described_class.new "mittens"}

  it "displays the name" do
    expect(slasher.name).to eq "slasher"
  end

  it "returns HP" do
    expect(slasher.hp).to eq Fighter::DEFAULT_HP
  end

  it "reduces HP when taking damage" do
    slasher.receive_damage
    expect(slasher.hp).to be_within(3).of(20)
  end


  it "can not have hp less than 0" do
    20.times {slasher.receive_damage}
    expect(slasher.hp).to eq 0
  end
end
