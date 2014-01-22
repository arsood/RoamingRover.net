module Api
  module V1
    class WalkersController < ApplicationController
      http_basic_authenticate_with name: "admin", password: "barkbark"
      respond_to :json

      def index
	respond_with Walker.all
      end

      def show
	@walker = Walker.find(params[:id])
	respond_with @walker
      end

      def create
	Walker.create(walker_params)
      end

      def update
	@walker = current_user.walker.find(params[:id])
	respond_to do |format|
	  if @walker.update_attributes(walker_params)
	    format.json {respond_with @walker}
	  end
	end
      end

      def destroy
	#Not adding a destroy function to the mobile app-users can cancel accounts on the site
      end
      
      private
        #Private method to encapsulate permissible parameters.
        def walker_params
	  params.require(:walker).permit(:user_id, :zip_code, :breeds, :age, :experience, :about)
        end  
    end
  end
end
