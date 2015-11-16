class User < ActiveRecord::Base
	has_many :listings
	has_secure_password
	validates :username, presence: true, uniqueness: true
	validates :gender, presence: true
	validates :birthday, presence: true
	validates :email, presence: true, uniqueness: true
	validates :contact, presence: true
	validates :address, presence: true
	validates :about_you, presence: true
	validates :password, presence: true
end
