class Restaurant < ActiveRecord::Base
	mount_uploader :avatar, AvatarUploader
	has_many :bookings
	belongs_to :category
	validates :name, presence: true
	validates :email, presence: true, uniqueness: true
	has_secure_password
	has_many :users, through: :bookings
end
