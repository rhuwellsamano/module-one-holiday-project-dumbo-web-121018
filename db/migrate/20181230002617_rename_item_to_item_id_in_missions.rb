class RenameItemToItemIdInMissions < ActiveRecord::Migration[5.0]
  def change
    rename_column :missions, :item, :item_id
  end
end
