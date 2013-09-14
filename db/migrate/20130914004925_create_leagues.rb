class CreateLeagues < ActiveRecord::Migration
  def change
    create_table :leagues do |t|
      t.string :name
      t.integer :sport_id
      t.integer :city_id

      t.timestamps
    end
  end
end
