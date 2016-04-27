class Player

  attr_reader :name, :hp

  def initialize(name)
    @name = name
    @hp = 100
  end

  def reduce_hp(attack_type = 10)
    @hp -= attack_type
  end

  def attack(player)
    player.reduce_hp
  end

end
