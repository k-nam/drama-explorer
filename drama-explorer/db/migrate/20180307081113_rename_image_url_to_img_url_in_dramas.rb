class RenameImageUrlToImgUrlInDramas < ActiveRecord::Migration[5.1]
  def change
    rename_column :dramas, :image_url, :img_url 
  end
end
