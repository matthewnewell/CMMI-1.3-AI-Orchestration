json.array!(@process_area_categories) do |process_area_category|
  json.extract! process_area_category, :name, :description
  json.url process_area_category_url(process_area_category, format: :json)
end
