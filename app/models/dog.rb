class Dog < ActiveRecord::Base
  belongs_to :owner
  attr_accessible :name, :breed, :age, :avatar, :owner_id, :about, :fixed
  validates :name, :breed, :age, presence: true
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end
