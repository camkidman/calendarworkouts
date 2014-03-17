class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_presence_of :name
  validates_uniqueness_of :email, :case_sensitive => false

  #attr_accessible :email, :password, :password_confirmation, :zip

  has_one :personal_detail
  has_many :workouts
  has_many :exercises, through: :workouts
end
