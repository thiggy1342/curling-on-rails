class CreatePlayersTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :players_teams do |t|
      t.belongs_to :player, index: true
      t.belongs_to :team, index: true
    end
  end
end
