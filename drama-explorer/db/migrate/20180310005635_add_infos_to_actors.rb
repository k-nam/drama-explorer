class AddInfosToActors < ActiveRecord::Migration[5.1]
  def change
    add_column :actors, :birthplace, :string
    add_column :actors, :company, :string
  end
end
