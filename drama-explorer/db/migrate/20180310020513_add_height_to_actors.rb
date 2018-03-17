class AddHeightToActors < ActiveRecord::Migration[5.1]
  def change
    add_column :actors, :height, :decimal
  end
end
