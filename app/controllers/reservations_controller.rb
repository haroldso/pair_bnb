class ReservationsController < ApplicationController

def new
	@listing = current_listing
	@reservation = @listing.reservations.new
end

def create

	@reservation = current_listing.reservations.new(reservation_params.merge(user: current_user))
	if @reservation.save
		a = @reservation.checkout_date- @reservation.checkin_date
		@reservation[:daycount] = a.to_i
		@reservation[:totalprice] = (a.to_i)*(current_listing.price)
		@reservation.save
		ReservationWorker.perform_async(@reservation.id)
		# ReservationMailer.booking_email(@reservation).deliver_now
		flash[:success] = "reservation done!"
		redirect_to root_path
	else
		# render ":reservations#new"
		flash[:warning] = "reservation cannot be done!"
		@listing = @reservation.listing
		render :new
	end

	def index
		@reservation = Reservation.all
	end
end

private
    def reservation_params
      params.require(:reservation).permit(:checkin_date, :checkout_date, :person, :listing_id, :user_id, :totalprice, :daycount)
    end

    def overlap

    end


end 