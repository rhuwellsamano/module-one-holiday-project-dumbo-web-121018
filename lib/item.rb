class Item < ActiveRecord::Base
  has_many :missions
  has_many :users, through: :missions
  has_many :destinations, through: :missions
  has_many :rocketships, through: :missions
  has_many :pilots, through: :missions
end