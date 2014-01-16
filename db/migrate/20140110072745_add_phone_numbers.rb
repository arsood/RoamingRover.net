class AddPhoneNumbers < ActiveRecord::Migration
  def change
  	remove_column :users, :phone
  	add_column :owners, :phone, :string
  	add_column :walkers, :phone, :string
  end
end
