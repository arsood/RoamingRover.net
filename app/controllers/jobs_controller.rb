class JobsController < ApplicationController
	before_action :correct_owner, only: [:edit, :update, :destroy]

	def create
		@job = Job.new(jobs_params)
		@job.owner_id = current_user.owner.id
		@job.dogs = params[:dogs]
		@job.days = params[:days]
		if @job.save
			redirect_to owners_path, :notice => "Job added successfully!"
		else
		    redirect_to owners_path, :alert => "There was something wrong with your request!"
		end
	end

	def show 
		@job = Job.find(params[:id])
	end

	# DELETE /posts/1
	# DELETE /posts/1.json
	def destroy
	  @job.destroy
	  respond_to do |format|
	    format.html { redirect_to owners_path }
	    format.json { head :no_content }
	  end
	end

    def correct_owner
    	@job = current_user.owner.jobs.find(params[:id])
        redirect_to owners_path if @job.nil?
    end	

	def jobs_params
		params.require(:job).permit(:title, :description, :days, :rate, :owner_id, :status, :dogs)
	end
end
