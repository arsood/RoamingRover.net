class OwnersController < ApplicationController
	before_filter :require_signin

	def index
		@owner = current_user.owner
	end

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
