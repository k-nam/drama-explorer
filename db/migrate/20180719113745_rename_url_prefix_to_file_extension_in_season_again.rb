class RenameUrlPrefixToFileExtensionInSeasonAgain < ActiveRecord::Migration[5.1]
	def change
		rename_column :seasons, :url_prefix, :file_extension

	end
end
