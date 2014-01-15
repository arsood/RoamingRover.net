class Dog < ActiveRecord::Base
  belongs_to :owner
  attr_accessible :name, :breed, :age, :image, :owner_id, :about
end
