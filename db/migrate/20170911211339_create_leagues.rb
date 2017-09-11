class CreateLeagues < ActiveRecord::Migration[5.1]
  def change
    create_table :leagues do |t|
      t.integer :length
      t.text :day_of_the_week
      t.integer :sheets
      t.text :manager

      t.timestamps
    end
  end
end
