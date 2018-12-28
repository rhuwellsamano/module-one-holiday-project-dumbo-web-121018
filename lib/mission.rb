class Mission < ActiveRecord::Base
  belongs_to :users
  belongs_to :items
  belongs_to :destinations
  belongs_to :rocketships
  belongs_to :pilots
end
