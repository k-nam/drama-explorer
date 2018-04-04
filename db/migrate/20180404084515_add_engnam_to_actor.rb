class AddEngnamToActor < ActiveRecord::Migration[5.1]
  def change
    add_column :actors, :eng_name, :string
    add_index :dramas, :eng_title, unique: true
    add_index :actors, :eng_name, unique: true
  end
end
