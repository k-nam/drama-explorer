class RemoveDurationFromEpisodes < ActiveRecord::Migration[5.1]
  def change
    remove_column :episodes, :duration, :time
  end
end
