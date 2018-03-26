class RemoveEndDateFromSeason < ActiveRecord::Migration[5.1]
  def change
    remove_column :seasons, :end_date, :date
  end
end
