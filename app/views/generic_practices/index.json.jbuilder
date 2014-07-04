json.array!(@generic_practices) do |generic_practice|
  json.extract! generic_practice, :name, :summary, :description, :generic_goal_id
  json.url generic_practice_url(generic_practice, format: :json)
end
