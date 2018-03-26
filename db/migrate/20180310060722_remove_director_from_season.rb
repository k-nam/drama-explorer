class RemoveDirectorFromSeason < ActiveRecord::Migration[5.1]
  def change
    remove_column :seasons, :director, :string
  end
end
