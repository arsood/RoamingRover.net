class WalkersController < ApplicationController
<<<<<<< HEAD
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
=======
  def walker_params
    params.require(:walkers).permit(:user_id, :zip_code, :breeds, :age, :experience, :about)
  end

>>>>>>> febdc4a3193207c1f9e6ddff3e1889f33e77071f
end
