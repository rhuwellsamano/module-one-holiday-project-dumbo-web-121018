class DestrockpilToDestrockpilIds < ActiveRecord::Migration[5.0]
  def change
      rename_column :missions, :destination, :destination_id
      rename_column :missions, :rocketship, :rocketship_id
      rename_column :missions, :pilot, :pilot_id
  end
end
