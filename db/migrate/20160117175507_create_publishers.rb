class CreatePublishers < ActiveRecord::Migration
  def change
    create_table :publishers do |t|
      t.string :name
      t.integer :user_id
      t.string :phone
      t.date :birthday

      t.timestamps null: false
    end
  end
end
