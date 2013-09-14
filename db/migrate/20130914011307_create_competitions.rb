class CreateCompetitions < ActiveRecord::Migration
  def change
    create_table :competitions do |t|
      t.integer :team_id
      t.integer :league_id

      t.timestamps
    end
  end
end
