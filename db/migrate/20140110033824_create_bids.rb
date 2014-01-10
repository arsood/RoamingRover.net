class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.string :proposal
      t.float :rate
      t.string :status
      t.references :walker
      t.references :job

      t.timestamps
    end
  end
end
