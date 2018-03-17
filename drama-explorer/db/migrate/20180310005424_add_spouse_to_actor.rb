class AddSpouseToActor < ActiveRecord::Migration[5.1]
  def change
    add_column :actors, :spouse, :string
  end
end
