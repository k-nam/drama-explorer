class AddEndDateToDrama < ActiveRecord::Migration[5.1]
  def change
    add_column :dramas, :end_date, :date
  end
end
