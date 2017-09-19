class AddPositionToPlayer < ActiveRecord::Migration[5.1]
  def change
    add_column :players, :position, :text
  end
end
