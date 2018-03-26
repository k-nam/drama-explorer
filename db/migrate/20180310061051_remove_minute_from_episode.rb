class RemoveMinuteFromEpisode < ActiveRecord::Migration[5.1]
  def change
    remove_column :episodes, :minute, :integer
  end
end
