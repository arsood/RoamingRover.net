class WalkersController < ApplicationController
	before_filter :require_signin

	def index
		@walker = current_user.walker
	end

	def walker_params
		params.require(:walkers).permit(:user_id, :zip_code, :breeds, :age, :experience, :about)
	end

  def index
  end

  def show
  end
end
