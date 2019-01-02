class User < ActiveRecord::Base
  has_many :missions
  has_many :missions, through: :items
  has_many :items
  has_many :items, through: :missions

  has_many :destinations, through: :missions
  has_many :rocketships, through: :missions
  has_many :pilots, through: :missions
  has_many :battles, through: :missions
end
