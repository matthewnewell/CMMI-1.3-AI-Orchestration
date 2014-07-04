json.array!(@specific_practices) do |specific_practice|
  json.extract! specific_practice, :name, :summary, :description, :process_area_id, :specific_goal_id
  json.url specific_practice_url(specific_practice, format: :json)
end
