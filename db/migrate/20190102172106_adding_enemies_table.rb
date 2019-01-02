class AddingEnemiesTable < ActiveRecord::Migration[5.0]
  def change
    create_table :enemies do |t|
      t.string :enemy_name
      t.integer :health
      t.string :status
    end
  end
end
