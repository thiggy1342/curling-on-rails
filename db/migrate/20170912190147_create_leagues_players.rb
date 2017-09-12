class CreateLeaguesPlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :leagues_players do |t|
      t.belongs_to :league, index: true
      t.belongs_to :player, index: true
    end
  end
end
