class AddStarsToForums < ActiveRecord::Migration[5.1]
  def change
    add_column :forums, :stars, :integer
  end
end
