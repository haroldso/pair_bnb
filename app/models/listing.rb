class Listing < ActiveRecord::Base
	belongs_to :user
	has_many :comments
	has_many :reservations

	validates :room_type, presence: true
	validates :home_type, presence: true
	validates :accomodates, presence: true
	validates :city, presence: true
	validates :bedroom, presence: true
	validates :bathroom, presence: true
	validates :bedcount, presence: true
	validates :listing_name, presence: true
	validates :summary, presence: true

	mount_uploaders :images, ImageForListingUploader
end
