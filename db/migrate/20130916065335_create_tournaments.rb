class CreateTournaments < ActiveRecord::Migration
  def change
    create_table :tournaments do |t|
      t.string :name
      t.datetime :start_date
      t.datetime :inscriptions_start
      t.datetime :inscriptions_deadline
      t.boolean :is_open
      t.integer :league_id
      t.integer :city_id
      t.integer :state_id
      t.text :description
      t.float :inscription_cost
      t.string :type
      t.timestamps
    end
  end
end
