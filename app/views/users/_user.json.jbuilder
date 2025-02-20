json.extract! user, :id, :pseudonyme, :photo, :created_at, :updated_at
json.url user_url(user, format: :json)
