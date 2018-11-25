class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :author
      t.string :creation_date
      t.string :topic
      t.string :content
      t.integer :reputation_score, :default => 0

      t.timestamps
    end
  end
end
