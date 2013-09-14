class CreateSports < ActiveRecord::Migration
  def change
    create_table :sports do |t|
      t.string :name
      t.string :acronym

      t.timestamps
    end
  end
end
