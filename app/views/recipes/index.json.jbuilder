json.array!(@recipes) do |recipe|
  json.extract! recipe, :id, :name, :flav_profile, :recipe_type, :brewery_name, :description, :label, :user_id_id, :style_id_id
  json.url recipe_url(recipe, format: :json)
end
