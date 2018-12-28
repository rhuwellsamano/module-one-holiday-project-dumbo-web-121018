class Rocketship < ActiveRecord::Base
  has_many :missions
  has_many :items, through: :missions
  has_many :destinations, through: :missions
  has_many :user, through: :missions
  has_many :pilots, through: :missions
end
