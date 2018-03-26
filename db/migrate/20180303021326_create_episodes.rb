class CreateEpisodes < ActiveRecord::Migration[5.1]
  def change
    create_table :episodes do |t|
      t.integer :episode_num
      t.time :duration
      t.date :date
      t.string :synopsis
      t.references :season, foreign_key: true

      t.timestamps
    end
  end
end
