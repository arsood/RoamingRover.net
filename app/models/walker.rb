class Walker < ActiveRecord::Base
	belongs_to :user
	has_many :bids
	has_many :reviews
end
