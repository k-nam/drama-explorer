class RemoveFilenameFromEpisodes < ActiveRecord::Migration[5.1]
  def change
    remove_column :episodes, :filename, :text
  end
end
