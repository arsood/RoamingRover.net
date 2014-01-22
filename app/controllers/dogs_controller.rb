class DogsController < ApplicationController
	def create 
		@dog = Dog.new(dogs_params)
		@dog.owner_id = current_user.owner.id
		if @dog.save
			redirect_to owners_path, :notice => "Dog added successfully!"
		else
		    redirect_to owners_path, :alert => "We were not able to add your dog!"
		end
	end

	def dogs_params
		params.require(:dog).permit(:name, :breed, :age, :avatar, :owner_id, :about, :fixed)
	end
end
