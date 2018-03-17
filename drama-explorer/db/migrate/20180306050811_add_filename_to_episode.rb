class AddFilenameToEpisode < ActiveRecord::Migration[5.1]
  def change
    add_column :episodes, :filename, :string
  end
end
