class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
      t.belongs_to :league, index: true
      t.text :lead
      t.text :second
      t.text :vice
      t.text :skip

      t.timestamps
    end
  end
end
