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
  	@client_listings = Job.where()

  	render 'dw_dashboard'
  end
end
