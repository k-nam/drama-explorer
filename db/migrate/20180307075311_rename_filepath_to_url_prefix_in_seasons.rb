class RenameFilepathToUrlPrefixInSeasons < ActiveRecord::Migration[5.1]
  def change
    rename_column :seasons, :filepath, :url_prefix
  end
end
