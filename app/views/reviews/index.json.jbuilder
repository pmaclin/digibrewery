json.array!(@reviews) do |review|
  json.extract! review, :id, :rating, :content, :user_id_id, :batch_id_id
  json.url review_url(review, format: :json)
end
