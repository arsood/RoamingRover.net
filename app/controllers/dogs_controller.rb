class DogsController < ApplicationController
	def create 
		@dog = Dog.new(dogs_params)
		@dog.owner_id = current_user.owner.id
		respond_to do |format|
			if @dog.save
				format.html { redirect_to @dog, notice: 'dog was successfully created.' }
				format.js
				format.json { render action: 'show', status: :created, location: @dog }
			else
				format.html { render action: 'new' }
				format.json { render json: @dog.errors, status: :unprocessable_entity }
			end
		end
	end

	def dogs_params
		params.require(:dog).permit(:name, :breed, :age, :image, :owner_id, :about)
	end
end
