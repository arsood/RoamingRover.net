class Owner < ActiveRecord::Base
	belongs_to :user
	has_many :dogs
	has_many :jobs
	has_many :reviews

	attr_accessible :user_id, :address
end
