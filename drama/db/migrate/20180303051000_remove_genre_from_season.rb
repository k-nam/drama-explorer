class RemoveGenreFromSeason < ActiveRecord::Migration[5.1]
  def change
    remove_column :seasons, :genre, :string
  end
end
