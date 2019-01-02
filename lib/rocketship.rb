class Rocketship < ActiveRecord::Base
  has_many :missions
  has_many :battles

  has_many :enemys, through: :battles

  has_many :users, through: :missions
  has_many :pilots, through: :missions
  has_many :destinations, through: :missions
  has_many :items, through: :missions

  has_many :battles, through: :missions

  ATTACK_DAMAGE_MIN = 5
  ATTACK_DAMAGE_MAX = 30

  def attack(target)
    damage = rand(ATTACK_DAMAGE_MIN..ATTACK_DAMAGE_MAX)
    target.do_damage(damage)
  end

  def do_damage(damage)
    @health -= damage
  end

  def dead?
    @health <= 0
  end

end
