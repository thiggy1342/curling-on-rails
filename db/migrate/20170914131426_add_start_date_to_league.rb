class AddStartDateToLeague < ActiveRecord::Migration[5.1]
  def change
    add_column :leagues, :start_date, :date
  end
end
