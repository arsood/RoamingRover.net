class DogsController < ApplicationController
	before_action :correct_owner, only: [:edit, :update, :destroy]

	def create 
		@dog = Dog.new(dogs_params)
		@dog.owner_id = current_user.owner.id
		if @dog.save
			redirect_to owners_path, :notice => "Dog added successfully!"
		else
		    redirect_to owners_path, :alert => "We were not able to add your dog!"
		end
	end

	# DELETE /posts/1
	# DELETE /posts/1.json
	def destroy
	  @dog.destroy
	  respond_to do |format|
	    format.html { redirect_to owners_path }
	    format.json { head :no_content }
	  end
	end

    def correct_owner
    	@dog = current_user.owner.dogs.find(params[:id])
        redirect_to owners_path if @dog.nil?
    end

	def dogs_params
		params.require(:dog).permit(:name, :breed, :age, :avatar, :owner_id, :about, :fixed)
	end
end
