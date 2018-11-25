class Comment < ApplicationRecord
  acts_as_votable
  validates :content, presence: true
  belongs_to :post
  belongs_to :user
  has_many :replies, :dependent => :destroy

  has_attached_file :image, styles: { large: "700x700>", medium: "500x500>", thumb: "150x150>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/


  def add
    update_attributes score: self.score + 1
  end

  def rest
    update_attributes score: self.score - 1
  end

  def add_2
    update_attributes score: self.score + 2
  end

  def rest_2
    update_attributes score: self.score - 2
  end

end
