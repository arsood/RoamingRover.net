class Job < ActiveRecord::Base
  belongs_to :owner
  has_many :bids
  attr_accessible :title, :description, :days, :time, :rate, :owner_id, :status
  serialize :days
  serialize :dogs
  validates :title, :description, :days, :rate, presence: true
end
