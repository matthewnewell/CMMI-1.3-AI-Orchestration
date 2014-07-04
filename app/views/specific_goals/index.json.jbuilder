json.array!(@specific_goals) do |specific_goal|
  json.extract! specific_goal, :name, :description, :process_area_id
  json.url specific_goal_url(specific_goal, format: :json)
end
