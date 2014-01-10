class JobsController < ApplicationController
	def jobs_params
		params.require(:jobs).permit(:title, :description, :days, :time, :rate, :owner_id, :status)
	end
end
