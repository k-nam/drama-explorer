class RemoveImgUrlFromActors < ActiveRecord::Migration[5.1]
  def change
    remove_column :actors, :img_url, :string
  end
end
