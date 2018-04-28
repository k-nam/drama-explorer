class AddForeignKeyToEpisodes < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :episodes, :seasons
  end
end
