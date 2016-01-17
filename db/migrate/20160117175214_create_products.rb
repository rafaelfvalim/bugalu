class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :product_type_id
      t.string :description
      t.integer :views
      t.boolean :published
      t.datetime :published_date
      t.integer :publisher_id
      t.integer :category_id
      t.integer :license_id
      t.timestamp :time_dutation
      t.integer :group_id

      t.timestamps null: false
    end
  end
end
