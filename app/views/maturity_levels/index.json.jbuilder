json.array!(@maturity_levels) do |maturity_level|
  json.extract! maturity_level, :name, :description
  json.url maturity_level_url(maturity_level, format: :json)
end
