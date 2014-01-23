class AddDogsField < ActiveRecord::Migration
  def change
    add_column :jobs, :dogs, :string
  end
end
