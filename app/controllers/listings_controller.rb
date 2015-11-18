class ListingsController < ApplicationController
  before_action :set_listing, only: [:show, :edit, :update, :destroy]


def index
@listing = Listing.all
end

def new
@listing = Listing.new
end

def create
@listing = Listing.new(listing_params)
if @listing.save
	redirect_to listings_path
	flash[:notice] = "Listing successfully created!"
else
	render :new
	flash[:warning] = "Listing not created!"
end
end

def show
	set_listing
end

def edit
	set_listing
end

def update
	if set_listing.update(listing_params)
	redirect_to @listing
else
	render :edit
end
end

def destroy
	@listing.destroy
	redirect_to listings_path
end


private
    def listing_params
      params.require(:listing).permit(:home_type, :room_type, :accomodates,
        :city, :bedroom, :bathroom, :bedcount, :listing_name, :summary)
    end

    def set_listing
      @listing = Listing.find(params[:id])
    end

    def check_correct_user

    end

end