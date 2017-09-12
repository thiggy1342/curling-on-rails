class AddSheetToGames < ActiveRecord::Migration[5.1]
  def change
    add_column :games, :sheet, :integer
  end
end
