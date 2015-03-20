json.array!(@batches) do |batch|
  json.extract! batch, :id, :brew_date, :bottle_date, :image, :notes, :user_id_id, :recipe_id_id
  json.url batch_url(batch, format: :json)
end
