class Mission < ActiveRecord::Base
  belongs_to :user
  belongs_to :item
  belongs_to :destination
  belongs_to :rocketship
  belongs_to :pilot
end
