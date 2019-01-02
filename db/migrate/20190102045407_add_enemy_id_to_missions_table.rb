class AddEnemyIdToMissionsTable < ActiveRecord::Migration[5.0]
  def change
    add_column :missions, :enemy_id, :integer
  end
end
