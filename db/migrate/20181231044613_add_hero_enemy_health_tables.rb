class AddHeroEnemyHealthTables < ActiveRecord::Migration[5.0]
  def change
    create_table :heros do |t|
      t.integer :health
    end

    create_table :enemys do |t|
      t.integer :health
    end

  end
end
