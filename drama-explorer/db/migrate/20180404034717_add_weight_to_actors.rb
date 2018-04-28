class AddWeightToActors < ActiveRecord::Migration[5.1]
  def change
    add_column :actors, :weight, :string
  end
end
