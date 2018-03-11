class AddGenreToSeasons < ActiveRecord::Migration[5.1]
  def change
    add_column :seasons, :genre, :string
  end
end
