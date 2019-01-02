class RenameBattleAndPilotToPlural < ActiveRecord::Migration[5.0]
  def change

      rename_table :pilot, :pilots
      rename_table :battle, :battles

  end
end
