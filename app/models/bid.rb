class Bid < ActiveRecord::Base
	belongs_to :walker
	belongs_to :job

	attr_accessible :proposal, :rate, :status, :walker_id, :job_id
end
