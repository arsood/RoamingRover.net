class ReviewsController < ApplicationController
	def review_params
		params.require(:reviews).permit(:review, :rating, :owner_id, :walker_id)
	end
end
