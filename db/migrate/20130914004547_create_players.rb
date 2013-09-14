class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.string :lastname
      t.string :email
      t.string :password
      t.string :nickname
      t.integer :city_id
      t.string :phone
      t.text :description

      t.timestamps
    end
  end
end
