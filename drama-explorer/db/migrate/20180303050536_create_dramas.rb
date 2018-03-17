class CreateDramas < ActiveRecord::Migration[5.1]
  def change
    create_table :dramas do |t|
      t.string :title
      t.string :type
      t.string :genre
      t.string :director
      t.string :actor
      t.date :start_date

      t.timestamps
    end
  end
end
