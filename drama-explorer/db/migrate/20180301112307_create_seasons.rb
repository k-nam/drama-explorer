class CreateSeasons < ActiveRecord::Migration[5.1]
  def change
    create_table :seasons do |t|
      t.string :title
      t.integer :season_num
      t.integer :num_total_episode
      t.string :director
      t.string :actor
      t.string :synopsis
      t.date :start_date

      t.timestamps
    end
  end
end
