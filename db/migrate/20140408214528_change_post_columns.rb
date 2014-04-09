class ChangePostColumns < ActiveRecord::Migration
  def change
    rename_column :posts, :post, :title
  end
end
