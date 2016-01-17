class AlterProductAddFks < ActiveRecord::Migration
  def change
    add_foreign_key :products , :product_types
    add_foreign_key :products , :categories
    add_foreign_key :products , :publishers
    add_foreign_key :products, :licenses
    add_foreign_key :products , :groups
  end
end
