json.extract! user, :id, :bd, :name, :rank_id, :catering_id, :created_at, :updated_at
json.url user_url(user, format: :json)
