json.extract! food, :id, :user_id, :brand, :name, :calories, :created_at, :updated_at
json.url food_url(food, format: :json)
