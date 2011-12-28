class CreateRosters < ActiveRecord::Migration
  def change
    create_table :rosters do |t|
      t.string :dow
      t.references :ship
      t.references :captain

      t.timestamps
    end
    add_index :rosters, :ship_id
    add_index :rosters, :captain_id
  end
end
