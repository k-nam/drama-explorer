class RemoveHourFromEpisode < ActiveRecord::Migration[5.1]
  def change
    remove_column :episodes, :hour, :integer
  end
end
