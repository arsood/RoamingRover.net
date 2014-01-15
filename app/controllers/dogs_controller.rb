class DogsController < ApplicationController
	def dogs_params
		params.require(:dogs).permit(:name, :breed, :age, :image, :owner_id, :about)
	end
end
