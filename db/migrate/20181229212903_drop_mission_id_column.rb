class DropMissionIdColumn < ActiveRecord::Migration[5.0]
  def change
    remove_column :missions, :mission_id
  end
end
