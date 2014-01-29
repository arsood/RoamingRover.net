class AddLatLonToOwners < ActiveRecord::Migration
  def change
    add_column :owners, :lat, :string
    add_column :owners, :lon, :string
  end
end
