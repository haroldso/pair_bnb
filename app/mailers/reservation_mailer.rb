class ReservationMailer < ApplicationMailer
	default from: 'tongtakent@gmail.com'

	def booking_email(reservation)
		@host = Reservation.find(reservation.id).listing.user.email
		@customer = Reservation.find(reservation.id).user.email
		# byebug
		mail(to: @host, subject: "you Have received a booking from '#{@customer}' ")
	end

	# def confirm_mail

end
