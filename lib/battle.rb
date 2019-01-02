class Battle < ActiveRecord::Base
  belongs_to :mission
  belongs_to :rocketship
  belongs_to :enemy
end
