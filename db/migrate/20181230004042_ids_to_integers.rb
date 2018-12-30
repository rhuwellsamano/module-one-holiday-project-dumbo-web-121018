class IdsToIntegers < ActiveRecord::Migration[5.0]
  def change
        change_column :missions, :item_id, :integer

        change_column :missions, :destination_id, :integer

        change_column :missions, :rocketship_id, :integer

        change_column :missions, :pilot_id, :integer
  end
end
