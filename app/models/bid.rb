class Bid < ActiveRecord::Base
	belongs_to :walker
	belongs_to :job
end
