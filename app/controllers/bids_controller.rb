class BidsController < ApplicationController
	def bid_params
		params.require(:bids).permit(:proposal, :rate, :status, :walker_id, :job_id)
	end
end
