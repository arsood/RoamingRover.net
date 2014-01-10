class Review < ActiveRecord::Base
  belongs_to :owner
  belongs_to :walker

  attr_accessible :review, :rating, :owner_id, :walker_id
end
