class AddAvatarColumnToDogs < ActiveRecord::Migration
  def self.up
    add_attachment :dogs, :avatar
  end

  def self.down
    remove_attachment :dogs, :avatar
  end  
end
