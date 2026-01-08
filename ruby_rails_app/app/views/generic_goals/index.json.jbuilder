json.array!(@generic_goals) do |generic_goal|
  json.extract! generic_goal, :name, :description
  json.url generic_goal_url(generic_goal, format: :json)
end
