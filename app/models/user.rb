class User < ActiveRecord::Base
	mount_uploader :avatar, AvatarUploader
	validates :name, presence: true
	validates :email, presence: true, uniqueness: true
	has_secure_password
	has_many :bookings
	has_many :restaurants, through: :bookings 
end
