class Forum < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    validates :subject, presence: true
    validates :description, presence: true
    has_many :posts , dependent: :destroy
    belongs_to :user

    has_many :moderator_applicants
    has_many :applicant_list, through: :moderator_applicants, source: :user

    def self.search(search)
        where("name ILIKE ? OR subject ILIKE ? OR description ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%")
    end


    def add
        update_attributes number_subscriptions: self.number_subscriptions + 1
    end
    
    def rest
        update_attributes number_subscriptions: self.number_subscriptions - 1
    end
    
end
