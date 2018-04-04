class RemoveImgurlFromDramas < ActiveRecord::Migration[5.1]
  def change
    add_index :dramas, :title, unique: true
    add_index :actors, :name, unique: true

  end
end
