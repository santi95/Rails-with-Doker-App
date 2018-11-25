
class Post < ApplicationRecord
    acts_as_votable
    validates :title, presence: true, uniqueness: true
    validates :topic, presence: true
    validates :content, presence: true
    belongs_to :forum
    belongs_to :user
    has_many :comments, :dependent => :destroy
    has_many :favorite_posts, :dependent => :destroy
    has_many :favorited_by, through: :favorite_posts, source: :user

    has_attached_file :image, styles: { large: "700x700>", medium: "500x500>", thumb: "150x150>" }
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

    def self.search(search)
        where("title ILIKE ? OR topic ILIKE ? OR content ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%")
      end

    def add
        update_attributes reputation_score: self.reputation_score + 1
    end

    def rest
        update_attributes reputation_score: self.reputation_score - 1
    end
    def add_2
        update_attributes reputation_score: self.reputation_score + 2
    end

    def rest_2
        update_attributes reputation_score: self.reputation_score - 2
    end
end
