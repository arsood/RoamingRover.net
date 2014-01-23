class ChangeDogColumns < ActiveRecord::Migration
  def change
  	remove_column :dogs, :rate
  	add_column :dogs, :rate, :string
  	add_column :dogs, :fixed, :boolean
  end
end
