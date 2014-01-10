class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.references :user
      t.string :address
      t.string :image

      t.timestamps
    end
  end
end
