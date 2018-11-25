class Reply < ApplicationRecord
  validates :content, presence: true
  belongs_to :comment
  belongs_to :user
  has_attached_file :image, styles: { large: "300x300>", medium: "200x200>", thumb: "100x100>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
