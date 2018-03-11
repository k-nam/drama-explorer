class RemoveNumTotalEpisodeFromSeason < ActiveRecord::Migration[5.1]
  def change
    remove_column :seasons, :num_total_episode, :integer
  end
end
