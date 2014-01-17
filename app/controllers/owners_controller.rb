class OwnersController < ApplicationController
	before_filter :require_signin

	def index
		@owner = current_user.owner
		# Will need to add zipcode localization condition
		@walkers = Walker.find(:all, :conditions => ["id != ?", current_user.id])
		@dog = Dog.new
	end

	def update 
		@owner = Owner.find(current_user.owner.id)
		if @owner.update_attributes(owner_params)
			redirect_to owner_path, :notice => "Your profile has been updated!"
		else
		    redirect_to owner_path, :alert => "Looks like there was an issue updating your profile!"
		end
	end

	def owner_params
		params.require(:owner).permit(:user_id, :address, :phone, :zipcode)
	end

end
