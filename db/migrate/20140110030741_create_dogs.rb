class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :breed
      t.integer :age
      t.string :image
      t.references :owner, index: true

      t.timestamps
    end
  end
end
