class AddEngtitleToDrama < ActiveRecord::Migration[5.1]
  def change
    add_column :dramas, :eng_title, :string
  end
end
