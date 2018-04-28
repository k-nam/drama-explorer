class RemoveImgUrlFromDramas < ActiveRecord::Migration[5.1]
  def change
    remove_column :dramas, :img_url, :string
  end
end
