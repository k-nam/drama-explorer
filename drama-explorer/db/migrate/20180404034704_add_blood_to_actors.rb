class AddBloodToActors < ActiveRecord::Migration[5.1]
  def change
    add_column :actors, :blood, :string
  end
end
