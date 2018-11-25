class AddAttachmentUserImgToUsers < ActiveRecord::Migration[5.1]
  def self.up
    change_table :users do |t|
      t.attachment :user_img
    end
  end

  def self.down
    remove_attachment :users, :user_img
  end
end
