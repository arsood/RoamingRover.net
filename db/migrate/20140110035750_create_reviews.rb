class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :review
      t.integer :rating
      t.references :owner, index: true
      t.references :walker, index: true

      t.timestamps
    end
  end
end
