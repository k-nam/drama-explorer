class AddDramaToSeasons < ActiveRecord::Migration[5.1]
  def change
    add_reference :seasons, :drama, foreign_key: true
  end
end
