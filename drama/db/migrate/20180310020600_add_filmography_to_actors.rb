class AddFilmographyToActors < ActiveRecord::Migration[5.1]
  def change
    add_column :actors, :filmography, :string
  end
end
