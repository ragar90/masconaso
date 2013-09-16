class CreateInscriptions < ActiveRecord::Migration
  def change
    create_table :inscriptions do |t|
      t.integer :team_id
      t.integer :tournament_id
      t.string :state

      t.timestamps
    end
  end
end
