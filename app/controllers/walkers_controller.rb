class WalkersController < ApplicationController
	before_filter :require_signin

	def index
		@walker = current_user.walker
    @jobs = Job.all

    if params[:search].present?
      @owners = Owner.near(params[:search], 20, :order => :distance)
    else
      @owner = Owner.all
      @owner.each do |o|
        if o.latitude.nil?
          new_location = "#{o.address} #{o.zipcode}"
          s = Geocoder.search(new_location)
          o.latitude = s[0].latitude
          o.longitude = s[0].longitude
          o.save
        end
      end
    end
  end

	def walker_params
		params.require(:walkers).permit(:user_id, :zipcode, :breeds, :age, :experience, :about)
	end

  def show
    @jobs = Job.all
  end

  def dashboard_calls
    zipcode_min = ((params[:zipcode].to_i / 100).floor)*100
    zipcode_max = zipcode_min + 99
  	@client_listings = Job.all
    # (Owner.where(:zipcode => zipcode_min..zipcode_max)).order(created_at: :desc)
  	render 'dw_dashboard'
  end
end
