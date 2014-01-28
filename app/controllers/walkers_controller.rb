class WalkersController < ApplicationController
	before_filter :require_signin

	def index
		@walker = current_user.walker
	end

	def walker_params
		params.require(:walkers).permit(:user_id, :zipcode, :breeds, :age, :experience, :about)
	end

  def index
  end

  def show
  end

  def dashboard_calls
    zipcode_min = ((params[:zipcode].to_i / 100).floor)*100
    zipcode_max = zipcode_min + 99
  	@client_listings = Job.where(Owner.where(:zipcode => zipcode_min..zipcode_max)).order(created_at: :desc)
  	render 'dw_dashboard'
  end
end
