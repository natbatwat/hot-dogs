class User < ActiveRecord::Base
  # DEVISE #
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # ASSOCIATIONS #
  has_and_belongs_to_many :events
  has_many :buddies,  class_name:"User", foreign_key:"buddy_id"
  has_many :reviews, dependent: :destroy
  has_and_belongs_to_many :playdates, dependent: :destroy

  # TAGGABLE #
  acts_as_taggable # alias for acts_as_taggable_on :tags
  acts_as_taggable_on :matches
end
