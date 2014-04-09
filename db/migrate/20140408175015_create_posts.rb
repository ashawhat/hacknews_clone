class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :link
      t.string :post
      t.integer :points

      t.timestamps
    end
  end
end
