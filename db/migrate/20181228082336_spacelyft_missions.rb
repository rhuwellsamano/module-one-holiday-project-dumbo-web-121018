class SpacelyftMissions < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :username
    end

    create_table :items do |t|
      t.string :item_name
      t.integer :quantity
    end

    create_table :destinations do |t|
      t.string :destination_name
    end

    create_table :rocketships do |t|
      t.string :rocket_name
    end

    create_table :pilot do |t|
      t.string :pilot_name
    end

    create_table :missions do |t|
      t.string :mission_name
      t.integer :user_id
      t.integer :item_id
      t.integer :destination_id
      t.integer :rocketship_id
      t.integer :pilot_id
      t.integer :mission_id
    end
  end
end
