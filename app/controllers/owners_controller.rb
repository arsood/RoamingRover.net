class OwnersController < ApplicationController
	before_filter :require_signin

	def index
		@owner = current_user.owner
		# Will need to add zipcode localization condition
		@walkers = Walker.find(:all, :conditions => ["id != ?", current_user.id])
		@dog = Dog.new
	end

	def owner_params
		params.require(:owners).permit(:user_id, :address)
	end
end
