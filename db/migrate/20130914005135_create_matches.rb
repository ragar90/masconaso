class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :team1_id
      t.integer :team2_id
      t.integer :team1_results
      t.string :team2_results
      t.boolean :confirmed
      t.datetime :dateted_to
      t.string :place
      t.string :map_latlng
      t.string :map_zoom
      t.string :is_cancel, default: false
      t.integer :tournament_id
      t.integer :parent_id
      t.timestamps
    end
  end
end
