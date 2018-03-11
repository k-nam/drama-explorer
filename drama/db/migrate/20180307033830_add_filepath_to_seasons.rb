class AddFilepathToSeasons < ActiveRecord::Migration[5.1]
  def change
    add_column :seasons, :filepath, :string
    add_column :seasons, :num_total_episode, :decimal
  end
end
