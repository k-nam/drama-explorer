class AddSynopsisToDrama < ActiveRecord::Migration[5.1]
  def change
    add_column :dramas, :synopsis, :string
  end
end
