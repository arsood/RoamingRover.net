class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :description
      t.string :days
      t.time :time
      t.float :rate
      t.references :owner, index: true
      t.string :status

      t.timestamps
    end
  end
end
