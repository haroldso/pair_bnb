class ReservationsController < ApplicationController

def new
	@listing = current_listing
end


end