module Api
  module V1
    class WalkersController < ApplicationController
      http_basic_authenticate_with name: "admin", password: "barkbark"
      respond_to :json

      def index
	respond_with Walker.all
      end

      def show
	respond_with Walker.find(params[:id])
      end

      def create (params[:user_id1, :zip_code1, :breeds1, :age1, :experience1, :about1])
	#using variablename + 1 for temp variables
	Walker.create(:user_id1, :zip_code1, :breeds1, :age1, :experience1, :about1)
      end

      def update
	#to do
      end

      def destroy
	#to do
      end
  
    end
  end
end
