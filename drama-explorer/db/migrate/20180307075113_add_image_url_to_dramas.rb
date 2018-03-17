class AddImageUrlToDramas < ActiveRecord::Migration[5.1]
  def change
    add_column :dramas, :image_url, :string
  end
end
