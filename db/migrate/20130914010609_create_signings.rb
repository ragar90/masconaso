class CreateSignings < ActiveRecord::Migration
  def change
    create_table :signings do |t|
      t.integer :player_id
      t.integer :team_id
      t.integer :sport_id
      t.boolean :confirmed, default: false
      t.string :contact_email
      t.timestamps
    end
  end
end
