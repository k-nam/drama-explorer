class RemoveActorFromSeason < ActiveRecord::Migration[5.1]
  def change
    remove_column :seasons, :actor, :string
  end
end
