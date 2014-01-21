class Job < ActiveRecord::Base
  belongs_to :owner
  attr_accessible :title, :description, :days, :time, :rate, :owner_id, :status
  validates :title, :description, :days, :rate, presence: true
end
