class CreateLeagues < ActiveRecord::Migration
  def change
    create_table :leagues do |t|
      t.string :name
      t.integer :sport_id
      t.integer :residence_id
      t.string :residence_type
      t.timestamps
    end
  end
end
