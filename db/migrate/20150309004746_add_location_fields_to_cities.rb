class AddLocationFieldsToCities < ActiveRecord::Migration
  def change
    change_table(:cities) do |t|
      t.float :lattitude
      t.float :longitude
    end
  end
end
