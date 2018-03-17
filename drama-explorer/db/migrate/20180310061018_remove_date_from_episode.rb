class RemoveDateFromEpisode < ActiveRecord::Migration[5.1]
  def change
    remove_column :episodes, :date, :date
  end
end
