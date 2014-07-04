json.array!(@specific_practice_elaborations) do |specific_practice_elaboration|
  json.extract! specific_practice_elaboration, :process_area_id, :specific_practice_id, :sp_elaboration
  json.url specific_practice_elaboration_url(specific_practice_elaboration, format: :json)
end
