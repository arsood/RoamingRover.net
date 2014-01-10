class ChangeColumnType < ActiveRecord::Migration
  def change
  	change_column :dogs, :about, :text
  	change_column :walkers, :about, :text
  	change_column :walkers, :experience, :text
  	change_column :jobs, :description, :text
  	change_column :bids, :proposal, :text
  end
end
