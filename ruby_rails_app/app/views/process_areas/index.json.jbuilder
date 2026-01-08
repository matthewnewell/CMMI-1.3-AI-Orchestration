json.array!(@process_areas) do |process_area|
  json.extract! process_area, :name, :purpose, :maturity_level_id, :process_category_id
  json.url process_area_url(process_area, format: :json)
end
