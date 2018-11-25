class CreateForums < ActiveRecord::Migration[5.1]
  def change
    create_table :forums do |t|
      t.string :name
      t.string :subject
      t.string :description
      t.integer :number_subscriptions

      t.timestamps
    end
  end
end
