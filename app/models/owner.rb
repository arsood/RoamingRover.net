class Owner < ActiveRecord::Base
	belongs_to :user
	has_many :dogs
	has_many :jobs
	has_many :reviews

	attr_accessible :user_id, :address, :zipcode
	
	validates :firstname, :lastname, :email, :password, :password_confirmation, presence: true
  validates :email, uniqueness: { case_sensitive: false }, :format => { :with => /\b[A-Z0-9._%a-z-]+@(?:[A-Z0-9a-z-]+.)+[A-Za-z]{2,4}\z/ }
end
