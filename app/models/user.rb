class User < ActiveRecord::Base
  # DEVISE #
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable, :omniauthable, :omniauth_providers => [:facebook]

  # GRAVATASTIC #
  include Gravtastic
  gravtastic :default => "wavatar" 

  # ASSOCIATIONS #
  has_and_belongs_to_many :events
  has_many :buddies,  class_name:"User", foreign_key:"buddy_id"
  has_many :reviews, dependent: :destroy
  has_and_belongs_to_many :playdates, dependent: :destroy

  # TAGGABLE #
  acts_as_taggable # alias for acts_as_taggable_on :tags
  acts_as_taggable_on :matches

  # OMNIAUTH #
  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.owner_name = auth.info.name   # assuming the user model has a name
      user.owner_picture = auth.info.image # assuming the user model has an image
    end
  end

  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        user.email = data["email"] if user.email.blank?
      end
    end
  end
end
