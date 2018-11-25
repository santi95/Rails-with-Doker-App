class CreateFavoritePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :favorite_posts do |t|
      t.integer :post_id
      t.integer :user_id

      t.timestamps
    end
  end
end
