class Mission < ActiveRecord::Base
  belongs_to :user
  belongs_to :destination
  belongs_to :rocketship
  belongs_to :pilot

  has_many :items
  has_many :battles

  has_many :enemys, through: :battles
  # has_many :battles, through :rocketships
end
