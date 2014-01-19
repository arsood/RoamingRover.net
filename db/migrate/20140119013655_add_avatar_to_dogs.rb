class AddAvatarToDogs < ActiveRecord::Migration
  def change
  	remove_column :dogs, :image
  end
end
