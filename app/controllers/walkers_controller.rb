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
end
