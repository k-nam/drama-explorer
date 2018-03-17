class RemoveSynopsisFromEpisode < ActiveRecord::Migration[5.1]
  def change
    remove_column :episodes, :synopsis, :string
  end
end
