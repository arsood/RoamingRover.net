class RemoveRateFromDogs < ActiveRecord::Migration
  def change
  	remove_column :dogs, :rate
  	remove_column :jobs, :rate
  	add_column :jobs, :rate, :string
  end
end
