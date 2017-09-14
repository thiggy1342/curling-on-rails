class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.references :league, foreign_key: true
      t.text :team_1
      t.text :team_2
      t.integer :team_1_score
      t.integer :team_2_score
      t.integer :number_of_ends
      t.date :start_date
      t.time :start_time

      t.timestamps
    end
  end
end
