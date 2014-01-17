class JobsController < ApplicationController
	def create
		@job = Job.new(jobs_params)
		@job.owner_id = current_user.owner.id
		@job.dogs = params[:dogs].to_s
		@job.days = params[:days].to_s
		if @job.save
			redirect_to owners_path, :notice => "Job added successfully!"
		else
		    redirect_to owners_path, :alert => "There was something wrong with your request!"
		end
	end
	def jobs_params
		params.require(:job).permit(:title, :description, :days, :rate, :owner_id, :status, :dogs)
	end
end
