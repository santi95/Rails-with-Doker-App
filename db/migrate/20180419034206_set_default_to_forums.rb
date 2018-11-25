class SetDefaultToForums < ActiveRecord::Migration[5.1]
  def change
    change_column :forums, :number_subscriptions, :integer, default: 1
  end
end
