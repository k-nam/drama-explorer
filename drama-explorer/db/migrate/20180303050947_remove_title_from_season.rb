class RemoveTitleFromSeason < ActiveRecord::Migration[5.1]
  def change
    remove_column :seasons, :title, :string
  end
end
