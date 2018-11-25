class AddModeratedForumsToUsers < ActiveRecord::Migration[5.1]
  def change
    change_table :users do |t|
      t.integer :moderated_forums, array: true, default: [] 
    end
  end
end
