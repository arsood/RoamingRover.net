class Review < ActiveRecord::Base
  belongs_to :owner
  belongs_to :walker
end
