class Walker < ActiveRecord::Base
	belongs_to :user
	has_many :bids
	has_many :reviews

	attr_accessible :user_id, :zipcode, :breeds, :age, :experience, :about
end
