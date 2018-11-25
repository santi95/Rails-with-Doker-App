class SetDefaultToUsers < ActiveRecord::Migration[5.1]
  def change
    change_column :users, :reputation, :integer, default: 0
  end
end
