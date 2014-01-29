class ChangeColumnNamesUsers < ActiveRecord::Migration
  def change
    rename_column :owners, :lat, :latitude
    rename_column :owners, :lon, :longitude
  end
end
