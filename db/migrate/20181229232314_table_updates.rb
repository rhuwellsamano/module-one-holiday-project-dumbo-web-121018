class TableUpdates < ActiveRecord::Migration[5.0]
  def change

    remove_column :items, :quantity

    change_column :missions, :item_id, :string
    rename_column :missions, :item_id, :item

    change_column :missions, :destination_id, :string
    rename_column :missions, :destination_id, :destination

    change_column :missions, :rocketship_id, :string
    rename_column :missions, :rocketship_id, :rocketship

    change_column :missions, :pilot_id, :string
    rename_column :missions, :pilot_id, :pilot
  end
end
