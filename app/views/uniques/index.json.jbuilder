json.array!(@uniques) do |unique|
  json.extract! unique, :id, :number, :batch_id
  json.url unique_url(unique, format: :json)
end
