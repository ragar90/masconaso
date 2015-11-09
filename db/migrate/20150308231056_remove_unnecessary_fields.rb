class RemoveUnnecessaryFields < ActiveRecord::Migration
  def up
  	change_table(:tournaments) do |t|
		  t.remove :city_id
		  t.remove :state_id
		end
		change_table(:leagues) do |t|
			t.remove :residence_id
			t.remove :residence_type
		  t.integer :city_id
		end
		change_table(:teams) do |t|
			t.integer :league_id
		end
  end

  def down
  	change_table(:tournaments) do |t|
		  t.integer :city_id
		  t.integer :state_id
		end
		change_table(:leagues) do |t|
			t.integer :residence_id
			t.string :residence_type
		end
		change_table(:teams) do |t|
			t.remove :league_id
		end
  end
end
