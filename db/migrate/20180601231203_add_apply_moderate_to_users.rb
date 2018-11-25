class AddApplyModerateToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :apply_moderate, :string, :default => "no"
  end
end
