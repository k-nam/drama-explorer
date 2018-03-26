class AddBirthdateToActor < ActiveRecord::Migration[5.1]
  def change
    add_column :actors, :birthdate, :date
  end
end
