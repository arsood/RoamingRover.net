class CreateWalkers < ActiveRecord::Migration
  def change
    create_table :walkers do |t|
      t.references :user
      t.string :zipcode
      t.string :breeds
      t.date :age
      t.string :experience
      t.string :about
      t.string :image

      t.timestamps
    end
  end
end
