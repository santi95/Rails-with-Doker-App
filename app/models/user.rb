class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  ROLES = %i[admin moderator visit common]
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
  devise :omniauthable, omniauth_providers: %i[facebook]
  has_attached_file :user_img, styles: { medium: "300x300>", thumb: "100x100>"}, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :user_img, content_type: /\Aimage\/.*\z/

  has_many :forums
  has_many :posts, :dependent => :destroy
  has_many :comments, :dependent => :destroy
  has_many :replies, :dependent => :destroy
  acts_as_voter
  has_many :favorite_posts, :dependent => :destroy
  has_many :favorites, through: :favorite_posts, source: :post

  has_many :moderator_applicants, :dependent => :destroy
  has_many :application_deck, through: :moderator_applicants, source: :forum

  def add_moderated_forums(add_forum)
    update_attributes moderated_forums: self.moderated_forums + [add_forum]
  end

  def remove_moderated_forums(add_forum)
    update_attributes moderated_forums: self.moderated_forums - [add_forum]
  end

  def add
    update_attributes reputation: self.reputation + 1
  end

  def rest
    update_attributes reputation: self.reputation - 1
  end


  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.name = auth.info.name   # assuming the user model has a name
      # assuming the user model has an image
      # If you are using confirmable and the provider(s) you use validate emails,
      # uncomment the line below to skip the confirmation emails.
      # user.skip_confirmation!
    end
  end


  #def add_moderate_forum(forum)
  #  update_attributes moderated_forums: self.moderated_forums + [forum]
  #end

  #def apply_moderate
  #  self.apply_moderate = "yes"
  #end

  def common?
    self.role == "common"
  end
  def admin?
    self.role == "admin"
  end
  def moderator?
    self.role == "moderator"
  end


end
