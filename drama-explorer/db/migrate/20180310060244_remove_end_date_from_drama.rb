class RemoveEndDateFromDrama < ActiveRecord::Migration[5.1]
  def change
    remove_column :dramas, :end_date, :date
  end
end
