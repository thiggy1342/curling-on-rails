class AddGameStartTimeToLeagues < ActiveRecord::Migration[5.1]
  def change
    add_column :leagues, :game_start_time, :time
  end
end
