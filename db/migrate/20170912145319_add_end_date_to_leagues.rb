class AddEndDateToLeagues < ActiveRecord::Migration[5.1]
  def change
    add_column :leagues, :end_date, :date
  end
end
