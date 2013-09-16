class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.string :name
      t.integer :country_id
      t.string :iso
      t.timestamps
    end
  end
end
