json.array!(@generic_practice_elaborations) do |generic_practice_elaboration|
  json.extract! generic_practice_elaboration, :process_area_id, :generic_practice_id, :gp_elaboration
  json.url generic_practice_elaboration_url(generic_practice_elaboration, format: :json)
end
