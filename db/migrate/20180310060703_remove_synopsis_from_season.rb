class RemoveSynopsisFromSeason < ActiveRecord::Migration[5.1]
  def change
    remove_column :seasons, :synopsis, :string
  end
end
