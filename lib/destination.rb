class Destination < ActiveRecord::Base
  has_many :missions
  has_many :users, through: :missions
  has_many :items, through: :missions
  has_many :pilots, through: :missions
  has_many :rocketships, through: :missions
  has_many :battles, through: :missions
end
