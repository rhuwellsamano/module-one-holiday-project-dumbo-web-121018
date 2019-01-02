class PerfectSchema2 < ActiveRecord::Migration[5.0]
  def change
    def change

      drop_table :users
      drop_table :items
      drop_table :destinations
      drop_table :rocketships
      drop_table :pilots
      drop_table :missions
      drop_table :enemys
      drop_table :heros

      create_table :users do |t|
        t.string :user_name
      end

      create_table :items do |t|
        t.string :item_name
        t.integer :user_id
        t.integer :mission_id
        t.string :status
      end

      create_table :destinations do |t|
        t.string :destination_name
      end

      create_table :rocketships do |t|
        t.string :rocketship_name
        t.integer :health
        t.string :status
      end

      create_table :pilots do |t|
        t.string :pilot_name
        t.string :status
      end

      create_table :missions do |t|
        t.string :mission_name
        t.string :status
        t.integer :user_id
        t.integer :destination_id
        t.integer :rocketship_id
        t.integer :pilot_id
      end

      create_table :battles do |t|
        t.string :battle_name
        t.integer :rocketship_id
        t.integer :enemy_id
        t.integer :mission_id
      end

      create_table :enemys do |t|
        t.string :enemy_name
        t.integer :health
        t.string :status
      end

    end
  end
end
