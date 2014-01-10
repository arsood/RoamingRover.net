class RemoveImageColumns < ActiveRecord::Migration
  def change
  	remove_columns :owners, :image
  	remove_columns :walkers, :image
  end
end
