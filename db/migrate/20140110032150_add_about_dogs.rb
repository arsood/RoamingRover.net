class AddAboutDogs < ActiveRecord::Migration
  def change
  	add_column :dogs, :about, :string
  end
end
