class AddForumIdToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :forum_id, :integer
  end
end
