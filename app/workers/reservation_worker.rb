class ReservationWorker
	include Sidekiq::Worker
	# queue_as :default

	def perform(reservation_id)
		reservation = Reservation.find(reservation_id)
		ReservationMailer.booking_email(reservation).deliver_now
	end

end