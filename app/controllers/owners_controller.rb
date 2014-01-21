class OwnersController < ApplicationController
	def index
		if not current_user.nil?
			@owner = current_user.owner
			@walkers = Walker.find(:all, :conditions => ["id != ? AND zipcode IS NOT NULL", current_user.id])
			@dog = Dog.new
			@job = Job.new
		else 
			# Will need to add zipcode localization condition
			@walkers = Walker.find(:all, :conditions => ["zipcode != NULL"])		
		end
	end

	def update 
		@owner = Owner.find(current_user.owner.id)
		if @owner.update_attributes(owner_params)
			redirect_to owners_path, :notice => "Your profile has been updated!"
		else
		    redirect_to owners_path, :alert => "Looks like there was an issue updating your profile!"
		end
	end

	def owner_params
		params.require(:owner).permit(:user_id, :address, :phone, :zipcode)
	end

end
