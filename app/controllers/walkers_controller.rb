class WalkersController < ApplicationController
	def walker_params
		params.require(:walkers).permit(:user_id, :zip_code, :breeds, :age, :experience, :about)
	end
end
