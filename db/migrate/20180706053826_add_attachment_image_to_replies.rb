class AddAttachmentImageToReplies < ActiveRecord::Migration[5.1]
  def self.up
    change_table :replies do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :replies, :image
  end
end
