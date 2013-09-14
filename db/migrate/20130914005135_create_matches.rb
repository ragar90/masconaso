class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :team1_id
      t.integer :team2_id
      t.integer :team1_results
      t.string :team2_results
      t.datetime :dateted_to

      t.timestamps
    end
  end
end
