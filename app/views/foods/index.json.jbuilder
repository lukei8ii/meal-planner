json.array!(@foods) do |food|
  json.extract! food, :id, :name, :serving_size, :calories, :protein, :carbohydrates, :fat
  json.url food_url(food, format: :json)
end
