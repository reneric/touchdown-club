class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :abbr
      t.string :team
      t.string :mascot
      t.string :conference
      t.string :division

      t.timestamps
    end
  end
end
