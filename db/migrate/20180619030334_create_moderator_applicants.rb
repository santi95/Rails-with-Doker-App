class CreateModeratorApplicants < ActiveRecord::Migration[5.1]
  def change
    create_table :moderator_applicants do |t|
      t.integer :forum_id
      t.integer :user_id

      t.timestamps
    end
  end
end
