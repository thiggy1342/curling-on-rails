class CreateGamesTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :games_teams do |t|
      t.belongs_to :games, index: true
      t.belongs_to :teams, index: true
    end
  end
end
