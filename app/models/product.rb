class Product < ActiveRecord::Base
  belongs_to :product_type
  belongs_to :publisher
  belongs_to :license
  belongs_to :group
  belongs_to :category
  mount_uploader :file, FileUploader
  before_save :default_values

  def default_values
  end
end
