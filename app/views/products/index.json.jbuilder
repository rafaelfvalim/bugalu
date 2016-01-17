json.array!(@products) do |product|
  json.extract! product, :id, :name, :type, :description, :views, :published, :published_date, :publisher_id, :category_id, :license_id, :time_dutation, :group_id
  json.url product_url(product, format: :json)
end
