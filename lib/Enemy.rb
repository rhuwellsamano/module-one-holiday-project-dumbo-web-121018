class Enemy < ActiveRecord::Base
  has_many :battles
  has_many :missions, through: :battles
  has_many :rocketships, through: :battles

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
