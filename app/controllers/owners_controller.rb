class OwnersController < ApplicationController
	def owner_params
		params.require(:owners).permit(:user_id, :address)
	end
	
	def new
	  @owner = Owner.new
  end
	def get_walkers
	 
  end
  
	def edit
	  
  end
  
	
end
