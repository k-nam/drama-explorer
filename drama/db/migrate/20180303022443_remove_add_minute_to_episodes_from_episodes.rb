class RemoveAddMinuteToEpisodesFromEpisodes < ActiveRecord::Migration[5.1]
  def change
    remove_column :episodes, :AddMinuteToEpisodes, :string
  end
end
