class Product < ActiveRecord::Base
  belongs_to :product_type
  belongs_to :publisher
  belongs_to :license
  belongs_to :group
  belongs_to :category
end
