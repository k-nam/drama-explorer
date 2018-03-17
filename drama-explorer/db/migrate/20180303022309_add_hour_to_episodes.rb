class AddHourToEpisodes < ActiveRecord::Migration[5.1]
  def change
    add_column :episodes, :hour, :integer
    add_column :episodes, :AddMinuteToEpisodes, :string
    add_column :episodes, :minute, :integer
  end
end
