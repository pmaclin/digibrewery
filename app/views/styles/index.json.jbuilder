json.array!(@styles) do |style|
  json.extract! style, :id, :name, :description, :image
  json.url style_url(style, format: :json)
end
