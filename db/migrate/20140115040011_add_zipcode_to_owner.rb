class AddZipcodeToOwner < ActiveRecord::Migration
  def change
    add_column :owners, :zipcode, :string
  end
end
