class OwnersController < ApplicationController
	def owner_params
		params.require(:owners).permit(:user_id, :address)
	end
	
	def show
	  
  end
  
	def edit
	  
  end
  
	
end
