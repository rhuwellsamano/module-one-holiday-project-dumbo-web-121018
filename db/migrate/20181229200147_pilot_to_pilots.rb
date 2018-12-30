class PilotToPilots < ActiveRecord::Migration[5.0]
  def change
      rename_table :pilot, :pilots
  end
end
