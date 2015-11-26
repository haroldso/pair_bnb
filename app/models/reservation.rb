class Reservation < ActiveRecord::Base
	belongs_to :user
	belongs_to :listing
	validates :checkin_date, presence: true
	validates :checkout_date, presence: true
	validates :person, presence: true
	validates :checkin_date, :checkout_date, :overlap => {:scope => "listing_id"}

	# scope :overlapping, -> (reservation) {
 #    select("(DATEDIFF('day', checkin_date, ?) * DATEDIFF('day', ?, checkout_date)) >= 0", reservation.checkout_date, reservation.checkin_date)
 #  }

end
