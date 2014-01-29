class WalkersController < ApplicationController

	def index
    if not current_user.nil?
		@walker = current_user.walker
    @jobs = Job.all

    if params[:latitude].present?
      @owners = Owner.near(params[:search], 20, :order => :distance)
    else
      if params[:address].present?
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

    else
    @client_listings = Job.all
    render 'dw_dashboard'
    end
  end

	def walker_params
		params.require(:walker).permit(:user_id, :zipcode, :breeds, :age, :experience, :about)
	end

  def show
    @jobs = Job.all
  end

  def update 
    @walker = Walker.find(current_user.walker.id)
    if @walker.update_attributes(walker_params)
      redirect_to walkers_path, :notice => "Your profile has been updated!"
    else
        redirect_to walkers_path, :alert => "Looks like there was an issue updating your profile!"
    end
  end

  def dashboard_calls
    zipcode_min = ((params[:zipcode].to_i / 100).floor)*100
    zipcode_max = zipcode_min + 99
  	@client_listings = Job.all
    # (Owner.where(:zipcode => zipcode_min..zipcode_max)).order(created_at: :desc)
  	render 'dw_dashboard'
  end
end
