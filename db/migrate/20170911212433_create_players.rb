class CreatePlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|
      t.text :first_name
      t.text :last_name
      t.boolean :member

      t.timestamps
    end
  end
end
